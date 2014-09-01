with GNATCOM.Dispinterface;

package winword.Versions_Interface is

   type Versions_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out Versions_Type);

   function Pointer (This : Versions_Type)
     return Pointer_To_Versions;

   procedure Attach (This    : in out Versions_Type;
                     Pointer : in     Pointer_To_Versions);

   function Get_Application
     (This : Versions_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : Versions_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : Versions_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Getu_NewEnum
     (This : Versions_Type)
     return GNATCOM.Types.Pointer_To_IUnknown;

   function Get_Count
     (This : Versions_Type)
     return Interfaces.C.long;

   function Get_AutoVersion
     (This : Versions_Type)
     return WdAutoVersions;

   procedure Put_AutoVersion
     (This : Versions_Type;
      prop : WdAutoVersions);

   function Item
     (This  : Versions_Type;
      Index : Interfaces.C.long)
     return Pointer_To_Version;

   procedure Save
     (This    : Versions_Type;
      Comment : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING);

end winword.Versions_Interface;

