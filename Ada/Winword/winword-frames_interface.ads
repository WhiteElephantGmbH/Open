with GNATCOM.Dispinterface;

package winword.Frames_Interface is

   type Frames_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out Frames_Type);

   function Pointer (This : Frames_Type)
     return Pointer_To_Frames;

   procedure Attach (This    : in out Frames_Type;
                     Pointer : in     Pointer_To_Frames);

   function Get_Application
     (This : Frames_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : Frames_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : Frames_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Getu_NewEnum
     (This : Frames_Type)
     return GNATCOM.Types.Pointer_To_IUnknown;

   function Get_Count
     (This : Frames_Type)
     return Interfaces.C.long;

   function Item
     (This  : Frames_Type;
      Index : Interfaces.C.long)
     return Pointer_To_Frame;

   function Add
     (This   : Frames_Type;
      uRange : Pointer_To_uRange)
     return Pointer_To_Frame;

   procedure Delete
     (This : Frames_Type);

end winword.Frames_Interface;

