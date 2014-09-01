with GNATCOM.Dispinterface;

package winword.Sentences_Interface is

   type Sentences_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out Sentences_Type);

   function Pointer (This : Sentences_Type)
     return Pointer_To_Sentences;

   procedure Attach (This    : in out Sentences_Type;
                     Pointer : in     Pointer_To_Sentences);

   function Getu_NewEnum
     (This : Sentences_Type)
     return GNATCOM.Types.Pointer_To_IUnknown;

   function Get_Count
     (This : Sentences_Type)
     return Interfaces.C.long;

   function Get_First
     (This : Sentences_Type)
     return Pointer_To_uRange;

   function Get_Last
     (This : Sentences_Type)
     return Pointer_To_uRange;

   function Get_Application
     (This : Sentences_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : Sentences_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : Sentences_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Item
     (This  : Sentences_Type;
      Index : Interfaces.C.long)
     return Pointer_To_uRange;

end winword.Sentences_Interface;

