with GNATCOM.Dispinterface;

package winword.Frames_Object is

   type Frames_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : Frames_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : Frames_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : Frames_Type)
     return GNATCOM.Types.VARIANT;

   function Getu_NewEnum
     (This : Frames_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Count
     (This : Frames_Type)
     return GNATCOM.Types.VARIANT;

   function Item
     (This  : Frames_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Add
     (This   : Frames_Type;
      uRange : GNATCOM.Types.VARIANT;
      Free   : Boolean := True)
     return GNATCOM.Types.VARIANT;

   procedure Delete
     (This : Frames_Type);

end winword.Frames_Object;

