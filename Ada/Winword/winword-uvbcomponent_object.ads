with GNATCOM.Dispinterface;

package winword.uVBComponent_Object is

   type uVBComponent_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Saved
     (This : uVBComponent_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Name
     (This : uVBComponent_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Name
     (This : uVBComponent_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Designer
     (This : uVBComponent_Type)
     return GNATCOM.Types.VARIANT;

   function Get_CodeModule
     (This : uVBComponent_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Type
     (This : uVBComponent_Type)
     return GNATCOM.Types.VARIANT;

   procedure Export
     (This     : uVBComponent_Type;
      FileName : GNATCOM.Types.VARIANT;
      Free     : Boolean := True);

   function Get_VBE
     (This : uVBComponent_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Collection
     (This : uVBComponent_Type)
     return GNATCOM.Types.VARIANT;

   function Get_HasOpenDesigner
     (This : uVBComponent_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Properties
     (This : uVBComponent_Type)
     return GNATCOM.Types.VARIANT;

   function DesignerWindow
     (This : uVBComponent_Type)
     return GNATCOM.Types.VARIANT;

   procedure Activate
     (This : uVBComponent_Type);

   function Get_DesignerID
     (This : uVBComponent_Type)
     return GNATCOM.Types.VARIANT;

end winword.uVBComponent_Object;

