with GNATCOM.Dispinterface;

package winword.HeadingStyle_Interface is

   type HeadingStyle_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out HeadingStyle_Type);

   function Pointer (This : HeadingStyle_Type)
     return Pointer_To_HeadingStyle;

   procedure Attach (This    : in out HeadingStyle_Type;
                     Pointer : in     Pointer_To_HeadingStyle);

   function Get_Application
     (This : HeadingStyle_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : HeadingStyle_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : HeadingStyle_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Style
     (This : HeadingStyle_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Style
     (This : HeadingStyle_Type;
      prop : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING);

   function Get_Level
     (This : HeadingStyle_Type)
     return Interfaces.C.short;

   procedure Put_Level
     (This : HeadingStyle_Type;
      prop : Interfaces.C.short);

   procedure Delete
     (This : HeadingStyle_Type);

end winword.HeadingStyle_Interface;

