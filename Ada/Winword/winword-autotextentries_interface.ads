with GNATCOM.Dispinterface;

package winword.AutoTextEntries_Interface is

   type AutoTextEntries_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out AutoTextEntries_Type);

   function Pointer (This : AutoTextEntries_Type)
     return Pointer_To_AutoTextEntries;

   procedure Attach (This    : in out AutoTextEntries_Type;
                     Pointer : in     Pointer_To_AutoTextEntries);

   function Get_Application
     (This : AutoTextEntries_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : AutoTextEntries_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : AutoTextEntries_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Getu_NewEnum
     (This : AutoTextEntries_Type)
     return GNATCOM.Types.Pointer_To_IUnknown;

   function Get_Count
     (This : AutoTextEntries_Type)
     return Interfaces.C.long;

   function Item
     (This  : AutoTextEntries_Type;
      Index : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_AutoTextEntry;

   function Add
     (This   : AutoTextEntries_Type;
      Name   : GNATCOM.Types.BSTR;
      uRange : Pointer_To_uRange;
      Free   : Boolean := True)
     return Pointer_To_AutoTextEntry;

   function AppendToSpike
     (This   : AutoTextEntries_Type;
      uRange : Pointer_To_uRange)
     return Pointer_To_AutoTextEntry;

end winword.AutoTextEntries_Interface;

