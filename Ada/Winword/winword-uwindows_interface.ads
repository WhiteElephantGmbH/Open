with GNATCOM.Dispinterface;

package winword.uWindows_Interface is

   type uWindows_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out uWindows_Type);

   function Pointer (This : uWindows_Type)
     return Pointer_To_uWindows;

   procedure Attach (This    : in out uWindows_Type;
                     Pointer : in     Pointer_To_uWindows);

   function Get_VBE
     (This       : uWindows_Type)
     return Pointer_To_VBE;

   function Get_Parent
     (This        : uWindows_Type)
     return Pointer_To_Application;

   function Item
     (This       : uWindows_Type;
      index      : GNATCOM.Types.VARIANT;
      Free       : Boolean := True)
     return Pointer_To_Window;

   function Get_Count
     (This      : uWindows_Type)
     return Interfaces.C.long;

   function uNewEnum
     (This        : uWindows_Type)
     return GNATCOM.Types.Pointer_To_IUnknown;

   function CreateToolWindow
     (This         : uWindows_Type;
      AddInInst    : Pointer_To_AddIn;
      ProgId       : GNATCOM.Types.BSTR;
      Caption      : GNATCOM.Types.BSTR;
      GuidPosition : GNATCOM.Types.BSTR;
      DocObj       : GNATCOM.Types.Pointer_To_Pointer_To_IDispatch;
      Free         : Boolean := True)
     return Pointer_To_Window;

end winword.uWindows_Interface;

