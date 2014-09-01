with GNATCOM.Dispinterface;

package winword.Endnote_Interface is

   type Endnote_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out Endnote_Type);

   function Pointer (This : Endnote_Type)
     return Pointer_To_Endnote;

   procedure Attach (This    : in out Endnote_Type;
                     Pointer : in     Pointer_To_Endnote);

   function Get_Application
     (This : Endnote_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : Endnote_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : Endnote_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Range
     (This : Endnote_Type)
     return Pointer_To_uRange;

   function Get_Reference
     (This : Endnote_Type)
     return Pointer_To_uRange;

   function Get_Index
     (This : Endnote_Type)
     return Interfaces.C.long;

   procedure Delete
     (This : Endnote_Type);

end winword.Endnote_Interface;

