with GNATCOM.Dispinterface;

package winword.AutoTextEntry_Interface is

   type AutoTextEntry_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out AutoTextEntry_Type);

   function Pointer (This : AutoTextEntry_Type)
     return Pointer_To_AutoTextEntry;

   procedure Attach (This    : in out AutoTextEntry_Type;
                     Pointer : in     Pointer_To_AutoTextEntry);

   function Get_Application
     (This : AutoTextEntry_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : AutoTextEntry_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : AutoTextEntry_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Index
     (This : AutoTextEntry_Type)
     return Interfaces.C.long;

   function Get_Name
     (This : AutoTextEntry_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_Name
     (This : AutoTextEntry_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   function Get_StyleName
     (This : AutoTextEntry_Type)
     return GNATCOM.Types.BSTR;

   function Get_Value
     (This : AutoTextEntry_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_Value
     (This : AutoTextEntry_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   procedure Delete
     (This : AutoTextEntry_Type);

   function Insert
     (This     : AutoTextEntry_Type;
      Where    : Pointer_To_uRange;
      RichText : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_uRange;

end winword.AutoTextEntry_Interface;

