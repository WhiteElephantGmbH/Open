with GNATCOM.Dispinterface;

package winword.Footnote_Interface is

   type Footnote_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out Footnote_Type);

   function Pointer (This : Footnote_Type)
     return Pointer_To_Footnote;

   procedure Attach (This    : in out Footnote_Type;
                     Pointer : in     Pointer_To_Footnote);

   function Get_Application
     (This : Footnote_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : Footnote_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : Footnote_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Range
     (This : Footnote_Type)
     return Pointer_To_uRange;

   function Get_Reference
     (This : Footnote_Type)
     return Pointer_To_uRange;

   function Get_Index
     (This : Footnote_Type)
     return Interfaces.C.long;

   procedure Delete
     (This : Footnote_Type);

end winword.Footnote_Interface;

