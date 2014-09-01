with GNATCOM.Dispinterface;

package winword.uVBComponent_Interface is

   type uVBComponent_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out uVBComponent_Type);

   function Pointer (This : uVBComponent_Type)
     return Pointer_To_uVBComponent;

   procedure Attach (This    : in out uVBComponent_Type;
                     Pointer : in     Pointer_To_uVBComponent);

   function Get_Saved
     (This      : uVBComponent_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   function Get_Name
     (This        : uVBComponent_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_Name
     (This        : uVBComponent_Type;
      pbstrReturn : GNATCOM.Types.BSTR;
      Free        : Boolean := True);

   function Get_Designer
     (This       : uVBComponent_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_CodeModule
     (This        : uVBComponent_Type)
     return Pointer_To_uCodeModule;

   function Get_Type
     (This  : uVBComponent_Type)
     return vbext_ComponentType;

   procedure Export
     (This     : uVBComponent_Type;
      FileName : GNATCOM.Types.BSTR;
      Free     : Boolean := True);

   function Get_VBE
     (This       : uVBComponent_Type)
     return Pointer_To_VBE;

   function Get_Collection
     (This       : uVBComponent_Type)
     return Pointer_To_uVBComponents;

   function Get_HasOpenDesigner
     (This      : uVBComponent_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   function Get_Properties
     (This       : uVBComponent_Type)
     return Pointer_To_uProperties;

   function DesignerWindow
     (This       : uVBComponent_Type)
     return Pointer_To_Window;

   procedure Activate
     (This : uVBComponent_Type);

   function Get_DesignerID
     (This        : uVBComponent_Type)
     return GNATCOM.Types.BSTR;

end winword.uVBComponent_Interface;

