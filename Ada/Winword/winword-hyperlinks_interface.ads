with GNATCOM.Dispinterface;

package winword.Hyperlinks_Interface is

   type Hyperlinks_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out Hyperlinks_Type);

   function Pointer (This : Hyperlinks_Type)
     return Pointer_To_Hyperlinks;

   procedure Attach (This    : in out Hyperlinks_Type;
                     Pointer : in     Pointer_To_Hyperlinks);

   function Get_Application
     (This : Hyperlinks_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : Hyperlinks_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : Hyperlinks_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Count
     (This : Hyperlinks_Type)
     return Interfaces.C.long;

   function Getu_NewEnum
     (This : Hyperlinks_Type)
     return GNATCOM.Types.Pointer_To_IUnknown;

   function Item
     (This  : Hyperlinks_Type;
      Index : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_Hyperlink;

   function uAdd
     (This       : Hyperlinks_Type;
      Anchor     : GNATCOM.Types.Pointer_To_IDispatch;
      Address    : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      SubAddress : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_Hyperlink;

   function Add
     (This          : Hyperlinks_Type;
      Anchor        : GNATCOM.Types.Pointer_To_IDispatch;
      Address       : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      SubAddress    : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ScreenTip     : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      TextToDisplay : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Target        : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_Hyperlink;

end winword.Hyperlinks_Interface;

