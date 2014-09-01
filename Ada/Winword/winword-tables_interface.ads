with GNATCOM.Dispinterface;

package winword.Tables_Interface is

   type Tables_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out Tables_Type);

   function Pointer (This : Tables_Type)
     return Pointer_To_Tables;

   procedure Attach (This    : in out Tables_Type;
                     Pointer : in     Pointer_To_Tables);

   function Getu_NewEnum
     (This : Tables_Type)
     return GNATCOM.Types.Pointer_To_IUnknown;

   function Get_Count
     (This : Tables_Type)
     return Interfaces.C.long;

   function Get_Application
     (This : Tables_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : Tables_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : Tables_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Item
     (This  : Tables_Type;
      Index : Interfaces.C.long)
     return Pointer_To_Table;

   function AddOld
     (This       : Tables_Type;
      uRange     : Pointer_To_uRange;
      NumRows    : Interfaces.C.long;
      NumColumns : Interfaces.C.long)
     return Pointer_To_Table;

   function Add
     (This                 : Tables_Type;
      uRange               : Pointer_To_uRange;
      NumRows              : Interfaces.C.long;
      NumColumns           : Interfaces.C.long;
      DefaultTableBehavior : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      AutoFitBehavior      : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_Table;

   function Get_NestingLevel
     (This : Tables_Type)
     return Interfaces.C.long;

end winword.Tables_Interface;

