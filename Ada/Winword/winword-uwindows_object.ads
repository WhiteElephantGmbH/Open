with GNATCOM.Dispinterface;

package winword.uWindows_Object is

   type uWindows_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_VBE
     (This : uWindows_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : uWindows_Type)
     return GNATCOM.Types.VARIANT;

   function Item
     (This  : uWindows_Type;
      index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Get_Count
     (This : uWindows_Type)
     return GNATCOM.Types.VARIANT;

   function uNewEnum
     (This : uWindows_Type)
     return GNATCOM.Types.VARIANT;

   function CreateToolWindow
     (This         : uWindows_Type;
      AddInInst    : GNATCOM.Types.VARIANT;
      ProgId       : GNATCOM.Types.VARIANT;
      Caption      : GNATCOM.Types.VARIANT;
      GuidPosition : GNATCOM.Types.VARIANT;
      DocObj       : GNATCOM.Types.VARIANT;
      Free         : Boolean := True)
     return GNATCOM.Types.VARIANT;

end winword.uWindows_Object;

