package org.jboss.seam.excel.ui;

import java.io.IOException;
import java.util.Date;

import javax.faces.component.UIComponent;
import javax.faces.component.ValueHolder;
import javax.faces.context.FacesContext;

import org.jboss.seam.core.Manager;
import org.jboss.seam.excel.DocumentData;
import org.jboss.seam.excel.DocumentStore;
import org.jboss.seam.excel.ExcelFactory;
import org.jboss.seam.excel.ExcelWorkbook;
import org.jboss.seam.excel.Template;
import org.jboss.seam.excel.DocumentData.DocumentType;
import org.jboss.seam.log.Log;
import org.jboss.seam.log.Logging;
import org.jboss.seam.navigation.Pages;

public class UIWorkbook extends ExcelComponent
{
   private Log log = Logging.getLog(getClass());

   public enum CreationType
   {
      WITHOUT_SETTINGS_OR_TEMPLATE, WITHOUT_SETTINGS_WITH_TEMPLATE, WITH_SETTINGS_WITHOUT_TEMPLATE, WITH_SETTNGS_AND_TEMPLATE
   }

   public static final String COMPONENT_TYPE = "org.jboss.seam.excel.ui.UIWorkbook";

   private boolean sendRedirect = true;
   private ExcelWorkbook excelWorkbook = null;
   private String type = "";
   private String templateURI;
   private Integer arrayGrowSize;
   private Boolean autoFilterDisabled;
   private Boolean cellValidationDisabled;
   private Integer characterSet;
   private Boolean drawingsDisabled;
   private String encoding;
   private String excelDisplayLanguage;
   private String excelRegionalSettings;
   private Boolean formulaAdjust;
   private Boolean gcDisabled;
   private Boolean ignoreBlanks;
   private Integer initialFileSize;
   private String locale;
   private Boolean mergedCellCheckingDisabled;
   private Boolean namesDisabled;
   private Boolean propertySets;
   private Boolean rationalization;
   private Boolean supressWarnings;
   private String temporaryFileDuringWriteDirectory;
   private Boolean useTemporaryFileDuringWrite;
   private Boolean workbookProtected;

   private long timing;
   
   public CreationType getCreationType()
   {
      if (hasSettings())
      {
         if (getTemplateURI() != null)
         {
            return CreationType.WITH_SETTNGS_AND_TEMPLATE;
         }
         else
         {
            return CreationType.WITH_SETTINGS_WITHOUT_TEMPLATE;
         }
      }
      else
      {
         if (getTemplateURI() != null)
         {
            return CreationType.WITHOUT_SETTINGS_WITH_TEMPLATE;
         }
         else
         {
            return CreationType.WITHOUT_SETTINGS_OR_TEMPLATE;
         }
      }
   }

   public Integer getArrayGrowSize()
   {
      return (Integer) valueOf("arrayGrowSize", arrayGrowSize);

   }

   public void setArrayGrowSize(Integer arrayGrowSize)
   {
      this.arrayGrowSize = arrayGrowSize;
   }

   public Boolean getAutoFilterDisabled()
   {
      return (Boolean) valueOf("autoFilterDisabled", autoFilterDisabled);
   }

   public void setAutoFilterDisabled(Boolean autoFilterDisabled)
   {
      this.autoFilterDisabled = autoFilterDisabled;
   }

   public Boolean getCellValidationDisabled()
   {
      return (Boolean) valueOf("cellValidationDisabled", cellValidationDisabled);
   }

   public void setCellValidationDisabled(Boolean cellValidationDisabled)
   {
      this.cellValidationDisabled = cellValidationDisabled;
   }

   public Integer getCharacterSet()
   {
      return (Integer) valueOf("characterSet", characterSet);
   }

   public void setCharacterSet(Integer characterSet)
   {
      this.characterSet = characterSet;
   }

   public Boolean getDrawingsDisabled()
   {
      return (Boolean) valueOf("drawingsDisabled", drawingsDisabled);
   }

   public void setDrawingsDisabled(Boolean drawingsDisabled)
   {
      this.drawingsDisabled = drawingsDisabled;
   }

   public String getEncoding()
   {
      return (String) valueOf("encoding", encoding);
   }

   public void setEncoding(String encoding)
   {
      this.encoding = encoding;
   }

   public String getExcelDisplayLanguage()
   {
      return (String) valueOf("excelDisplayLanguage", excelDisplayLanguage);
   }

   public void setExcelDisplayLanguage(String excelDisplayLanguage)
   {
      this.excelDisplayLanguage = excelDisplayLanguage;
   }

   public String getExcelRegionalSettings()
   {
      return (String) valueOf("excelRegionalSettings", excelRegionalSettings);
   }

   public void setExcelRegionalSettings(String excelRegionalSettings)
   {
      this.excelRegionalSettings = excelRegionalSettings;
   }

   public Boolean getFormulaAdjust()
   {
      return (Boolean) valueOf("formulaAdjust", formulaAdjust);
   }

   public void setFormulaAdjust(Boolean formulaAdjust)
   {
      this.formulaAdjust = formulaAdjust;
   }

   public Boolean getGcDisabled()
   {
      return (Boolean) valueOf("gcDisabled", gcDisabled);
   }

   public void setGcDisabled(Boolean gcDisabled)
   {
      this.gcDisabled = gcDisabled;
   }

   public Boolean getIgnoreBlanks()
   {
      return (Boolean) valueOf("ignoreBlanks", ignoreBlanks);
   }

   public void setIgnoreBlanks(Boolean ignoreBlanks)
   {
      this.ignoreBlanks = ignoreBlanks;
   }

   public Integer getInitialFileSize()
   {
      return (Integer) valueOf("initialFileSize", initialFileSize);
   }

   public void setInitialFileSize(Integer initialFileSize)
   {
      this.initialFileSize = initialFileSize;
   }

   public String getLocale()
   {
      return (String) valueOf("locale", locale);
   }

   public void setLocale(String locale)
   {
      this.locale = locale;
   }

   public Boolean getMergedCellCheckingDisabled()
   {
      return (Boolean) valueOf("mergedCellCheckingDisabled", mergedCellCheckingDisabled);
   }

   public void setMergedCellCheckingDisabled(Boolean mergedCellCheckingDisabled)
   {
      this.mergedCellCheckingDisabled = mergedCellCheckingDisabled;
   }

   public Boolean getNamesDisabled()
   {
      return (Boolean) valueOf("namesDisabled", namesDisabled);
   }

   public void setNamesDisabled(Boolean namesDisabled)
   {
      this.namesDisabled = namesDisabled;
   }

   public Boolean getPropertySets()
   {
      return (Boolean) valueOf("propertySets", propertySets);
   }

   public void setPropertySets(Boolean propertySets)
   {
      this.propertySets = propertySets;
   }

   public Boolean getRationalization()
   {
      return (Boolean) valueOf("rationalization", rationalization);

   }

   public void setRationalization(Boolean rationalization)
   {
      this.rationalization = rationalization;
   }

   public Boolean getSupressWarnings()
   {
      return (Boolean) valueOf("supressWarnings", supressWarnings);
   }

   public void setSupressWarnings(Boolean supressWarnings)
   {
      this.supressWarnings = supressWarnings;
   }

   public String getTemporaryFileDuringWriteDirectory()
   {
      return (String) valueOf("temporaryFileDuringWriteDirectory", temporaryFileDuringWriteDirectory);
   }

   public void setTemporaryFileDuringWriteDirectory(String temporaryFileDuringWriteDirectory)
   {
      this.temporaryFileDuringWriteDirectory = temporaryFileDuringWriteDirectory;
   }

   public Boolean getUseTemporaryFileDuringWrite()
   {
      return (Boolean) valueOf("useTemporaryFileDuringWrite", useTemporaryFileDuringWrite);
   }

   public void setUseTemporaryFileDuringWrite(Boolean useTemporaryFileDuringWrite)
   {
      this.useTemporaryFileDuringWrite = useTemporaryFileDuringWrite;
   }

   @SuppressWarnings("unchecked")
   @Override
   public void encodeBegin(javax.faces.context.FacesContext arg0) throws IOException
   {
      timing = new Date().getTime();
      /**
       * Get workbook implementation
       */
      excelWorkbook = ExcelFactory.instance().getExcelWorkbook(type);

      /**
       * Create a new workbook
       */
      excelWorkbook.createWorkbook(this);

      /**
       * Find global templates and push them to workbook
       */
      for (Template template : getTemplates(getChildren()))
      {
         excelWorkbook.addTemplate(template);
      }

   }

   @Override
   public void encodeEnd(FacesContext context) throws IOException
   {

      /**
       * Get the bytes from workbook that should be passed on to the user
       */
      byte[] bytes = new byte[0];
      bytes = excelWorkbook.getBytes();
      if (log.isDebugEnabled()) {
         log.debug("Prosessed for {0}ms", new Date().getTime() - timing);
      }

      DocumentType type = excelWorkbook.getDocumentType();

      /**
       * 
       * Code below is the same as for PDF generation. With a seam core document
       * store (or equivalent), this might need modifications
       * 
       */
      String viewId = Pages.getViewId(context);
      String baseName = baseNameForViewId(viewId);

      DocumentData documentData = new DocumentData(baseName, type, bytes);

      if (sendRedirect)
      {
         DocumentStore store = DocumentStore.instance();
         String id = store.newId();

         String url = store.preferredUrlForContent(baseName, type.getExtension(), id);
         url = Manager.instance().encodeConversationId(url, viewId);

         store.saveData(id, documentData);

         context.getExternalContext().redirect(url);

      }
      else
      {
         UIComponent parent = getParent();

         if (parent instanceof ValueHolder)
         {
            ValueHolder holder = (ValueHolder) parent;
            holder.setValue(documentData);
         }
      }
   }

   public static String baseNameForViewId(String viewId)
   {
      int pos = viewId.lastIndexOf("/");
      if (pos != -1)
      {
         viewId = viewId.substring(pos + 1);
      }

      pos = viewId.lastIndexOf(".");
      if (pos != -1)
      {
         viewId = viewId.substring(0, pos);
      }

      return viewId;
   }

   public boolean isSendRedirect()
   {
      return sendRedirect;
   }

   public void setSendRedirect(boolean sendRedirect)
   {
      this.sendRedirect = sendRedirect;
   }

   @Override
   public String getFamily()
   {
      return COMPONENT_TYPE;
   }

   public String getType()
   {
      return type;
   }

   public void setType(String type)
   {
      this.type = type;
   }

   public ExcelWorkbook getExcelWorkbook()
   {
      return excelWorkbook;
   }

   public void setExcelWorkbook(ExcelWorkbook excelWorkbook)
   {
      this.excelWorkbook = excelWorkbook;
   }

   public String getTemplateURI()
   {
      return (String) valueOf("templateURI", templateURI);
   }

   public void setTemplateURI(String templateURI)
   {
      this.templateURI = templateURI;
   }

   /**
    * Hack? Noooooooooooooooo
    * 
    * @return
    */
   public boolean hasSettings()
   {
      return arrayGrowSize != null || autoFilterDisabled != null || cellValidationDisabled != null || characterSet != null || drawingsDisabled != null || encoding != null || excelDisplayLanguage != null || excelRegionalSettings != null || formulaAdjust != null || gcDisabled != null || ignoreBlanks != null || initialFileSize != null || locale != null || mergedCellCheckingDisabled != null || namesDisabled != null || propertySets != null || rationalization != null || supressWarnings != null || temporaryFileDuringWriteDirectory != null || useTemporaryFileDuringWrite != null;
   }

   public Boolean getWorkbookProtected()
   {
      return (Boolean) valueOf("workbookProtected", workbookProtected);
   }

   public void setWorkbookProtected(Boolean workbookProtected)
   {
      this.workbookProtected = workbookProtected;
   }

}