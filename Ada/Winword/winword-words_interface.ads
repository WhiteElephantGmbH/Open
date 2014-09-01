with GNATCOM.Dispinterface;

package winword.Words_Interface is

   type Words_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out Words_Type);

   function Pointer (This : Words_Type)
     return Pointer_To_Words;

   procedure Attach (This    : in out Words_Type;
                     Pointer : in     Pointer_To_Words);

   function Getu_NewEnum
     (This : Words_Type)
     return GNATCOM.Types.Pointer_To_IUnknown;

   function Get_Count
     (This : Words_Type)
     return Interfaces.C.long;

   function Get_First
     (This : Words_Type)
     return Pointer_To_uRange;

   function Get_Last
     (This : Words_Type)
     return Pointer_To_uRange;

   function Get_Application
     (This : Words_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : Words_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : Words_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Item
     (This  : Words_Type;
      Index : Interfaces.C.long)
     return Pointer_To_uRange;

end winword.Words_Interface;

