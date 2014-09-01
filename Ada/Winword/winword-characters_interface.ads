with GNATCOM.Dispinterface;

package winword.Characters_Interface is

   type Characters_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out Characters_Type);

   function Pointer (This : Characters_Type)
     return Pointer_To_Characters;

   procedure Attach (This    : in out Characters_Type;
                     Pointer : in     Pointer_To_Characters);

   function Getu_NewEnum
     (This : Characters_Type)
     return GNATCOM.Types.Pointer_To_IUnknown;

   function Get_Count
     (This : Characters_Type)
     return Interfaces.C.long;

   function Get_First
     (This : Characters_Type)
     return Pointer_To_uRange;

   function Get_Last
     (This : Characters_Type)
     return Pointer_To_uRange;

   function Get_Application
     (This : Characters_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : Characters_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : Characters_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Item
     (This  : Characters_Type;
      Index : Interfaces.C.long)
     return Pointer_To_uRange;

end winword.Characters_Interface;

