with GNATCOM.Dispinterface;

package winword.AutoCorrectEntries_Interface is

   type AutoCorrectEntries_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out AutoCorrectEntries_Type);

   function Pointer (This : AutoCorrectEntries_Type)
     return Pointer_To_AutoCorrectEntries;

   procedure Attach (This    : in out AutoCorrectEntries_Type;
                     Pointer : in     Pointer_To_AutoCorrectEntries);

   function Get_Application
     (This : AutoCorrectEntries_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : AutoCorrectEntries_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : AutoCorrectEntries_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Getu_NewEnum
     (This : AutoCorrectEntries_Type)
     return GNATCOM.Types.Pointer_To_IUnknown;

   function Get_Count
     (This : AutoCorrectEntries_Type)
     return Interfaces.C.long;

   function Item
     (This  : AutoCorrectEntries_Type;
      Index : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_AutoCorrectEntry;

   function Add
     (This  : AutoCorrectEntries_Type;
      Name  : GNATCOM.Types.BSTR;
      Value : GNATCOM.Types.BSTR;
      Free  : Boolean := True)
     return Pointer_To_AutoCorrectEntry;

   function AddRichText
     (This   : AutoCorrectEntries_Type;
      Name   : GNATCOM.Types.BSTR;
      uRange : Pointer_To_uRange;
      Free   : Boolean := True)
     return Pointer_To_AutoCorrectEntry;

end winword.AutoCorrectEntries_Interface;

