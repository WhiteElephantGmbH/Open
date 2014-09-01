with GNATCOM.Dispinterface;

package winword.SmartTags_Interface is

   type SmartTags_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out SmartTags_Type);

   function Pointer (This : SmartTags_Type)
     return Pointer_To_SmartTags;

   procedure Attach (This    : in out SmartTags_Type;
                     Pointer : in     Pointer_To_SmartTags);

   function Getu_NewEnum
     (This : SmartTags_Type)
     return GNATCOM.Types.Pointer_To_IUnknown;

   function Get_Count
     (This : SmartTags_Type)
     return Interfaces.C.long;

   function Get_Application
     (This : SmartTags_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : SmartTags_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : SmartTags_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Item
     (This  : SmartTags_Type;
      Index : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_SmartTag;

   function Add
     (This       : SmartTags_Type;
      Name       : GNATCOM.Types.BSTR;
      uRange     : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Properties : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Free       : Boolean := True)
     return Pointer_To_SmartTag;

end winword.SmartTags_Interface;

