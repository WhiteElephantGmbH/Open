with GNATCOM.Dispinterface;

package winword.MappedDataFields_Interface is

   type MappedDataFields_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out MappedDataFields_Type);

   function Pointer (This : MappedDataFields_Type)
     return Pointer_To_MappedDataFields;

   procedure Attach (This    : in out MappedDataFields_Type;
                     Pointer : in     Pointer_To_MappedDataFields);

   function Get_Application
     (This : MappedDataFields_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : MappedDataFields_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : MappedDataFields_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Count
     (This : MappedDataFields_Type)
     return Interfaces.C.long;

   function Getu_NewEnum
     (This : MappedDataFields_Type)
     return GNATCOM.Types.Pointer_To_IUnknown;

   function Item
     (This  : MappedDataFields_Type;
      Index : WdMappedDataFields)
     return Pointer_To_MappedDataField;

end winword.MappedDataFields_Interface;

