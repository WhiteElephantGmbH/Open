with GNATCOM.Dispinterface;

package winword.ListLevels_Interface is

   type ListLevels_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out ListLevels_Type);

   function Pointer (This : ListLevels_Type)
     return Pointer_To_ListLevels;

   procedure Attach (This    : in out ListLevels_Type;
                     Pointer : in     Pointer_To_ListLevels);

   function Getu_NewEnum
     (This : ListLevels_Type)
     return GNATCOM.Types.Pointer_To_IUnknown;

   function Get_Count
     (This : ListLevels_Type)
     return Interfaces.C.long;

   function Get_Application
     (This : ListLevels_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : ListLevels_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : ListLevels_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Item
     (This  : ListLevels_Type;
      Index : Interfaces.C.long)
     return Pointer_To_ListLevel;

end winword.ListLevels_Interface;

