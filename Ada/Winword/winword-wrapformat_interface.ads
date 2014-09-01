with GNATCOM.Dispinterface;

package winword.WrapFormat_Interface is

   type WrapFormat_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out WrapFormat_Type);

   function Pointer (This : WrapFormat_Type)
     return Pointer_To_WrapFormat;

   procedure Attach (This    : in out WrapFormat_Type;
                     Pointer : in     Pointer_To_WrapFormat);

   function Get_Application
     (This : WrapFormat_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : WrapFormat_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : WrapFormat_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Type
     (This : WrapFormat_Type)
     return WdWrapType;

   procedure Put_Type
     (This : WrapFormat_Type;
      prop : WdWrapType);

   function Get_Side
     (This : WrapFormat_Type)
     return WdWrapSideType;

   procedure Put_Side
     (This : WrapFormat_Type;
      prop : WdWrapSideType);

   function Get_DistanceTop
     (This : WrapFormat_Type)
     return Interfaces.C.C_float;

   procedure Put_DistanceTop
     (This : WrapFormat_Type;
      prop : Interfaces.C.C_float);

   function Get_DistanceBottom
     (This : WrapFormat_Type)
     return Interfaces.C.C_float;

   procedure Put_DistanceBottom
     (This : WrapFormat_Type;
      prop : Interfaces.C.C_float);

   function Get_DistanceLeft
     (This : WrapFormat_Type)
     return Interfaces.C.C_float;

   procedure Put_DistanceLeft
     (This : WrapFormat_Type;
      prop : Interfaces.C.C_float);

   function Get_DistanceRight
     (This : WrapFormat_Type)
     return Interfaces.C.C_float;

   procedure Put_DistanceRight
     (This : WrapFormat_Type;
      prop : Interfaces.C.C_float);

   function Get_AllowOverlap
     (This : WrapFormat_Type)
     return Interfaces.C.long;

   procedure Put_AllowOverlap
     (This : WrapFormat_Type;
      prop : Interfaces.C.long);

end winword.WrapFormat_Interface;

