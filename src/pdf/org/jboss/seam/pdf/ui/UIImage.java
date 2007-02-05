package org.jboss.seam.pdf.ui;

import org.jboss.seam.pdf.ITextUtils;

import javax.faces.context.*;

import java.net.MalformedURLException;
import java.net.URL;

import com.lowagie.text.*;

public class UIImage
    extends UIRectangle
{
    public static final String COMPONENT_TYPE = "org.jboss.seam.pdf.ui.UIImage";

    Image image;
    
    String resource;
    float  rotation;
    float  height;
    float  width;
    String alignment;
    String alt;
    
    Float indentationLeft;
    Float indentationRight;
    Float spacingBefore;
    Float spacingAfter;
    Float widthPercentage;
    Float initialRotation;
    String dpi;
    String scalePercent;
    
    Boolean wrap;
    Boolean underlying;
    
    java.awt.Image imageData;

    public void setResource(String resource) {
        this.resource = resource;
    }

    public void setRotation(float rotation) {
        this.rotation = rotation;
    }

    public void setHeight(float height) {
        this.height = height;
    }

    public void setWidth(float width) {
        this.width = width;
    }

    public void setAlignment(String alignment) {
        this.alignment = alignment;
    }

    public void setAlt(String alt) {
        this.alt = alt;
    }

    public void setWrap(Boolean wrap) {
        this.wrap = wrap;
    }

    public void setUnderlying(Boolean underlying) {
        this.underlying = underlying;
    }

    public void setDpi(String dpi) {
        this.dpi = dpi;
    }

    public void setIndentationLeft(Float indentationLeft) {
        this.indentationLeft = indentationLeft;
    }

    public void setIndentationRight(Float indentationRight) {
        this.indentationRight = indentationRight;
    }

    public void setInitialRotation(Float initialRotation) {
        this.initialRotation = initialRotation;
    }

    public void setSpacingAfter(Float spacingAfter) {
        this.spacingAfter = spacingAfter;
    }

    public void setSpacingBefore(Float spacingBefore) {
        this.spacingBefore = spacingBefore;
    }

    public void setWidthPercentage(Float widthPercentage) {
        this.widthPercentage = widthPercentage;
    }
    
    public void setScalePercent(String scalePercent) { 
        this.scalePercent = scalePercent; 
    }
    
    public void setImageData(java.awt.Image imageData) {
        this.imageData = imageData;
    }

    
    public Object getITextObject() {
        return image;
    }
   
    public void removeITextObject() {
        image = null;
    }
    
    
    private Image createFromResource(FacesContext context, String resource) {
        URL url;
        try {
            url = context.getExternalContext().getResource(resource);
        } catch (MalformedURLException e) {
            throw new RuntimeException(e);
        }
        
        if (url == null) {
            throw new RuntimeException("cannot locate image resource " + resource);
        }
        try {
            return Image.getInstance(url);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
    
    private Image createFromImage(java.awt.Image awtImage) {
        try {
            return Image.getInstance(awtImage, null);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }        
    }
    
    public void createITextObject(FacesContext context) {       
        resource = (String) valueBinding(context,"resource", resource);
       
        if (resource != null) {
            image = createFromResource(context, resource);
        } else {
            imageData = (java.awt.Image)  valueBinding(context, "imageData", imageData);
            image = createFromImage(imageData);            
        }
                        
        rotation = (Float) valueBinding(context, "rotation", rotation);
        if (rotation != 0) {
            image.setRotationDegrees(rotation);
        }

        height = (Float) valueBinding(context, "height", height);
        width = (Float) valueBinding(context, "width", width);
        if (height>0 || width > 0) {
            image.scaleAbsolute(width, height);
        }

        int alignmentValue = 0;
        
        alignment = (String) valueBinding(context, "alignment", alignment);
        if (alignment != null) {
            alignmentValue = (ITextUtils.alignmentValue(alignment));
        }
        
        wrap = (Boolean) valueBinding(context, "wrap", wrap);
        if (wrap!=null && wrap.booleanValue()) {
            alignmentValue |= Image.TEXTWRAP;
        } 
        
        underlying = (Boolean) valueBinding(context, "underlying", underlying);
        if (underlying!= null && underlying.booleanValue()) {
            alignmentValue |= Image.UNDERLYING;
        }

        image.setAlignment(alignmentValue);

        alt = (String) valueBinding(context, "alt", alt);
        if (alt != null) {
            image.setAlt(alt);
        }
        
        indentationLeft = (Float) valueBinding(context, "indentationLeft", indentationLeft);
        if (indentationLeft != null) {
           image.setIndentationLeft(indentationLeft); 
        }

        indentationRight = (Float) valueBinding(context, "indentationRight", indentationRight);
        if (indentationRight != null) {
            image.setIndentationRight(indentationRight); 
        }
                
        spacingBefore = (Float) valueBinding(context, "spacingBefore", spacingBefore);
        if (spacingBefore != null) {
            image.setSpacingBefore(spacingBefore);
        }
        
        spacingAfter = (Float) valueBinding(context, "spacingAfter", spacingAfter);
        if (spacingAfter != null) {
            image.setSpacingAfter(spacingAfter); 
        }
        widthPercentage = (Float) valueBinding(context, "widthPercentage", widthPercentage);
        if (widthPercentage != null) {
            image.setWidthPercentage(widthPercentage); 
        }
        
        initialRotation = (Float) valueBinding(context, "initialRotation", initialRotation);
        if (initialRotation != null) {
            image.setInitialRotation(initialRotation); 
        }
        
        dpi = (String) valueBinding(context, "dpi", dpi);
        if (dpi != null) {
            int[] dpiValues = ITextUtils.stringToIntArray(dpi);
            image.setDpi(dpiValues[0], dpiValues[1]);
         }
        
        applyRectangleProperties(context, image);
        
        scalePercent = (String) valueBinding(context, "scalePercent", scalePercent);
        if (scalePercent != null) {
            float[] scale = ITextUtils.stringToFloatArray(scalePercent);
            if (scale.length == 1) {
                image.scalePercent(scale[0]); 
            } else if (scale.length == 2) {
                image.scalePercent(scale[0], scale[1]);
            } else {
                throw new RuntimeException("scalePercent must contain one or two scale percentages");
            }
        }
    }

    public void handleAdd(Object o) {
        throw new RuntimeException("can't add " + o.getClass().getName() + " to image");
    }
}
