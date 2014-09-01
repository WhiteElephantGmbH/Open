with GNATCOM.Dispinterface;

package winword.Dialogs_Interface is

   type Dialogs_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out Dialogs_Type);

   function Pointer (This : Dialogs_Type)
     return Pointer_To_Dialogs;

   procedure Attach (This    : in out Dialogs_Type;
                     Pointer : in     Pointer_To_Dialogs);

   function Get_Application
     (This : Dialogs_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : Dialogs_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : Dialogs_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Getu_NewEnum
     (This : Dialogs_Type)
     return GNATCOM.Types.Pointer_To_IUnknown;

   function Get_Count
     (This : Dialogs_Type)
     return Interfaces.C.long;

   function Item
     (This  : Dialogs_Type;
      Index : WdWordDialog)
     return Pointer_To_Dialog;

end winword.Dialogs_Interface;

