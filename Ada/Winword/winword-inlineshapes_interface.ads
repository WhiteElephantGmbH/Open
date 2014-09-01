with GNATCOM.Dispinterface;

package winword.InlineShapes_Interface is

   type InlineShapes_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out InlineShapes_Type);

   function Pointer (This : InlineShapes_Type)
     return Pointer_To_InlineShapes;

   procedure Attach (This    : in out InlineShapes_Type;
                     Pointer : in     Pointer_To_InlineShapes);

   function Get_Application
     (This : InlineShapes_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : InlineShapes_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : InlineShapes_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Count
     (This : InlineShapes_Type)
     return Interfaces.C.long;

   function Getu_NewEnum
     (This : InlineShapes_Type)
     return GNATCOM.Types.Pointer_To_IUnknown;

   function Item
     (This  : InlineShapes_Type;
      Index : Interfaces.C.long)
     return Pointer_To_InlineShape;

   function AddPicture
     (This             : InlineShapes_Type;
      FileName         : GNATCOM.Types.BSTR;
      LinkToFile       : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      SaveWithDocument : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      uRange           : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Free             : Boolean := True)
     return Pointer_To_InlineShape;

   function AddOLEObject
     (This          : InlineShapes_Type;
      ClassType     : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      FileName      : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      LinkToFile    : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      DisplayAsIcon : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      IconFileName  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      IconIndex     : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      IconLabel     : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      uRange        : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_InlineShape;

   function AddOLEControl
     (This      : InlineShapes_Type;
      ClassType : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      uRange    : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_InlineShape;

   function uNew
     (This   : InlineShapes_Type;
      uRange : Pointer_To_uRange)
     return Pointer_To_InlineShape;

   function AddHorizontalLine
     (This     : InlineShapes_Type;
      FileName : GNATCOM.Types.BSTR;
      uRange   : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Free     : Boolean := True)
     return Pointer_To_InlineShape;

   function AddHorizontalLineStandard
     (This   : InlineShapes_Type;
      uRange : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_InlineShape;

   function AddPictureBullet
     (This     : InlineShapes_Type;
      FileName : GNATCOM.Types.BSTR;
      uRange   : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Free     : Boolean := True)
     return Pointer_To_InlineShape;

end winword.InlineShapes_Interface;

