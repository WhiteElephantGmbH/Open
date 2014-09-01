with GNATCOM.Dispinterface;

package winword.HeadingStyles_Interface is

   type HeadingStyles_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out HeadingStyles_Type);

   function Pointer (This : HeadingStyles_Type)
     return Pointer_To_HeadingStyles;

   procedure Attach (This    : in out HeadingStyles_Type;
                     Pointer : in     Pointer_To_HeadingStyles);

   function Get_Application
     (This : HeadingStyles_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : HeadingStyles_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : HeadingStyles_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Getu_NewEnum
     (This : HeadingStyles_Type)
     return GNATCOM.Types.Pointer_To_IUnknown;

   function Get_Count
     (This : HeadingStyles_Type)
     return Interfaces.C.long;

   function Item
     (This  : HeadingStyles_Type;
      Index : Interfaces.C.long)
     return Pointer_To_HeadingStyle;

   function Add
     (This  : HeadingStyles_Type;
      Style : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Level : Interfaces.C.short)
     return Pointer_To_HeadingStyle;

end winword.HeadingStyles_Interface;

