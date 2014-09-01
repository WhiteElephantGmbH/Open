with GNATCOM.Dispinterface;

package winword.Languages_Interface is

   type Languages_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out Languages_Type);

   function Pointer (This : Languages_Type)
     return Pointer_To_Languages;

   procedure Attach (This    : in out Languages_Type;
                     Pointer : in     Pointer_To_Languages);

   function Getu_NewEnum
     (This : Languages_Type)
     return GNATCOM.Types.Pointer_To_IUnknown;

   function Get_Count
     (This : Languages_Type)
     return Interfaces.C.long;

   function Get_Application
     (This : Languages_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : Languages_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : Languages_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Item
     (This  : Languages_Type;
      Index : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_Language;

end winword.Languages_Interface;

