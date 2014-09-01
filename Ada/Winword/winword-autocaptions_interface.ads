with GNATCOM.Dispinterface;

package winword.AutoCaptions_Interface is

   type AutoCaptions_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out AutoCaptions_Type);

   function Pointer (This : AutoCaptions_Type)
     return Pointer_To_AutoCaptions;

   procedure Attach (This    : in out AutoCaptions_Type;
                     Pointer : in     Pointer_To_AutoCaptions);

   function Get_Application
     (This : AutoCaptions_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : AutoCaptions_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : AutoCaptions_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Getu_NewEnum
     (This : AutoCaptions_Type)
     return GNATCOM.Types.Pointer_To_IUnknown;

   function Get_Count
     (This : AutoCaptions_Type)
     return Interfaces.C.long;

   function Item
     (This  : AutoCaptions_Type;
      Index : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_AutoCaption;

   procedure CancelAutoInsert
     (This : AutoCaptions_Type);

end winword.AutoCaptions_Interface;

