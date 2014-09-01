with GNATCOM.Dispinterface;

package winword.HTMLProjectItem_Interface is

   type HTMLProjectItem_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out HTMLProjectItem_Type);

   function Pointer (This : HTMLProjectItem_Type)
     return Pointer_To_HTMLProjectItem;

   procedure Attach (This    : in out HTMLProjectItem_Type;
                     Pointer : in     Pointer_To_HTMLProjectItem);

   function Get_Application
     (This    : HTMLProjectItem_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Creator
     (This      : HTMLProjectItem_Type)
     return Interfaces.C.long;

   function Get_Name
     (This     : HTMLProjectItem_Type)
     return GNATCOM.Types.BSTR;

   function Get_IsOpen
     (This     : HTMLProjectItem_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure LoadFromFile
     (This     : HTMLProjectItem_Type;
      FileName : GNATCOM.Types.BSTR;
      Free     : Boolean := True);

   procedure Open
     (This     : HTMLProjectItem_Type;
      OpenKind : MsoHTMLProjectOpen);

   procedure SaveCopyAs
     (This     : HTMLProjectItem_Type;
      FileName : GNATCOM.Types.BSTR;
      Free     : Boolean := True);

   function Get_Text
     (This : HTMLProjectItem_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_Text
     (This : HTMLProjectItem_Type;
      Text : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   function Get_Parent
     (This    : HTMLProjectItem_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

end winword.HTMLProjectItem_Interface;

