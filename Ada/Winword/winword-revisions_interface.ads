with GNATCOM.Dispinterface;

package winword.Revisions_Interface is

   type Revisions_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out Revisions_Type);

   function Pointer (This : Revisions_Type)
     return Pointer_To_Revisions;

   procedure Attach (This    : in out Revisions_Type;
                     Pointer : in     Pointer_To_Revisions);

   function Get_Application
     (This : Revisions_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : Revisions_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : Revisions_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Getu_NewEnum
     (This : Revisions_Type)
     return GNATCOM.Types.Pointer_To_IUnknown;

   function Get_Count
     (This : Revisions_Type)
     return Interfaces.C.long;

   function Item
     (This  : Revisions_Type;
      Index : Interfaces.C.long)
     return Pointer_To_Revision;

   procedure AcceptAll
     (This : Revisions_Type);

   procedure RejectAll
     (This : Revisions_Type);

end winword.Revisions_Interface;

