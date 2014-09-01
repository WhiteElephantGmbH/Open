with GNATCOM.Dispinterface;

package winword.Lists_Interface is

   type Lists_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out Lists_Type);

   function Pointer (This : Lists_Type)
     return Pointer_To_Lists;

   procedure Attach (This    : in out Lists_Type;
                     Pointer : in     Pointer_To_Lists);

   function Getu_NewEnum
     (This : Lists_Type)
     return GNATCOM.Types.Pointer_To_IUnknown;

   function Get_Count
     (This : Lists_Type)
     return Interfaces.C.long;

   function Get_Application
     (This : Lists_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : Lists_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : Lists_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Item
     (This  : Lists_Type;
      Index : Interfaces.C.long)
     return Pointer_To_List;

end winword.Lists_Interface;

