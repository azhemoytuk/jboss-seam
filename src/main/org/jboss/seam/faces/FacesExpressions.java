//$Id$
package org.jboss.seam.faces;

import static org.jboss.seam.annotations.Install.FRAMEWORK;
import static org.jboss.seam.el.EL.EL_CONTEXT;

import javax.el.ELContext;
import javax.faces.context.FacesContext;

import org.jboss.seam.ScopeType;
import org.jboss.seam.annotations.Install;
import org.jboss.seam.annotations.Name;
import org.jboss.seam.annotations.Scope;
import org.jboss.seam.annotations.intercept.BypassInterceptors;
import org.jboss.seam.core.Expressions;

/**
 * Factory for method and value bindings in a JSF environment.
 * 
 * @author Gavin King
 */
@Scope(ScopeType.APPLICATION)
@BypassInterceptors
@Install(precedence=FRAMEWORK, classDependencies="javax.faces.context.FacesContext")
@Name("org.jboss.seam.core.expressions")
public class FacesExpressions extends Expressions
{
   
   /**
    * Get an appropriate ELContext. If there is an active JSF request,
    * use JSF's ELContext. Otherwise, use one that we created.
    */
   @Override
   public ELContext getELContext()
   {
      FacesContext facesContext = FacesContext.getCurrentInstance();
      return facesContext==null ? EL_CONTEXT : facesContext.getELContext();
   }
   
   @Override
   protected boolean isFacesContextActive()
   { 
      return FacesContext.getCurrentInstance()==null; 
   }
   
}
