package org.jboss.seam.test.integration.faces;

import com.gargoylesoftware.htmlunit.WebClient;
import com.gargoylesoftware.htmlunit.html.HtmlPage;
import org.jboss.arquillian.container.test.api.Deployment;
import org.jboss.arquillian.container.test.api.OverProtocol;
import org.jboss.arquillian.container.test.api.RunAsClient;
import org.jboss.arquillian.junit.Arquillian;
import org.jboss.arquillian.test.api.ArquillianResource;
import org.jboss.seam.ScopeType;
import org.jboss.seam.annotations.Begin;
import org.jboss.seam.annotations.Create;
import org.jboss.seam.annotations.In;
import org.jboss.seam.annotations.Name;
import org.jboss.seam.annotations.Out;
import org.jboss.seam.annotations.Scope;
import org.jboss.seam.contexts.Contexts;
import org.jboss.seam.test.integration.Deployments;
import org.jboss.shrinkwrap.api.Archive;
import org.jboss.shrinkwrap.api.asset.StringAsset;
import org.junit.Test;
import org.junit.runner.RunWith;

import java.io.Serializable;
import java.net.URL;

import static org.junit.Assert.assertTrue;

@RunWith(Arquillian.class)
@RunAsClient
public class ConversationContextFlushOutjectionTest
{
  private final WebClient client = new WebClient();

  @ArquillianResource
  URL contextPath;

  @Deployment(name="BoundComponentConversationTest")
  @OverProtocol("Servlet 3.0")
  public static Archive<?> createDeployment()
  {
    return Deployments.realSeamDeployment()
        .addClasses(TestComponent.class)
        .addAsWebResource(new StringAsset(
            "<html xmlns=\"http://www.w3.org/1999/xhtml\"" +
                " xmlns:h=\"http://java.sun.com/jsf/html\"" +
                " xmlns:f=\"http://java.sun.com/jsf/core\"" +
                " xmlns:ui=\"http://java.sun.com/jsf/facelets\">" +
                "<h:head></h:head>" +
                "<h:body>" +
                "<h:form id='form'>" +
                "<h:commandButton id='begin' action='#{testComponent.begin}' value='Begin' />" +
                "<h:commandButton id='next' action='#{testComponent.next}' value='Next' />" +
                "State: <h:outputText value='#{state}'/>" +
                "</h:form>" +
                "</h:body>" +
                "</html>"), "test.xhtml");
  }

  @Scope(ScopeType.CONVERSATION)
  @Name("testComponent")
  public static class TestComponent implements Serializable
  {
    private static final long serialVersionUID = 1L;

    // Name of the field is important (JDK dependant?).
    // To generate ConcurrentModificationException and avoid saving "state" to session
    // it must appear before "state" in entrySet of the additions HashMap
    // (additions = new HashMap<String, Object>() of ServerConversationContext).
    @Out
    private Object outject = new Object() {
      @Override
      public boolean equals(Object obj)
      {
        Contexts.getConversationContext().set("outjectSomethingElse", new Object());
        return super.equals(obj);
      }
    };

    @In(required = false)
    @Out
    private String state;

    @Create
    public void init()
    {
      state = "";
    }

    @Begin
    public void begin()
    {
      state += "begin;";
    }

    public void next()
    {
      state += "next;";
    }
  }

  @Test
  public void testOutjection() throws Exception
  {
    HtmlPage page = client.getPage(contextPath + "test.seam");

    page = page.getElementById("form:begin").click();
    page = page.getElementById("form:next").click();
    page = page.getElementById("form:next").click();

    assertTrue(page.getBody().getTextContent().contains("State: begin;next;next;"));
  }
}
