with GNATCOM.Dispinterface;

package winword.FontNames_Interface is

   type FontNames_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out FontNames_Type);

   function Pointer (This : FontNames_Type)
     return Pointer_To_FontNames;

   procedure Attach (This    : in out FontNames_Type;
                     Pointer : in     Pointer_To_FontNames);

   function Getu_NewEnum
     (This : FontNames_Type)
     return GNATCOM.Types.Pointer_To_IUnknown;

   function Get_Count
     (This : FontNames_Type)
     return Interfaces.C.long;

   function Get_Application
     (This : FontNames_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : FontNames_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : FontNames_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Item
     (This  : FontNames_Type;
      Index : Interfaces.C.long)
     return GNATCOM.Types.BSTR;

end winword.FontNames_Interface;

