(*
 * SDL 1.3 FreePascal header for iPhone
 * Pre-Alpha
 *
 * Used SDL header from Hedgewars project (http://www.hedgewars.org) and JEDI-SDL and modified to
 * fit just the needs for SDL with iPhone and updated to the latest ("stable") version (Rev. 5483)
 *
 * Warning: Still incomplete!!!
 *
 * © Johannes Stein, 2010
 * License: MPL
 *
 *)

unit SDL13_iOS;

{$I jedi-sdl.inc}

{$mode delphi}
{$H+}

{$ALIGN ON}

//{$link libgcc.a}
//{$linklib gcc}

{$link libSDL_iOS.a}

{$linkframework AudioToolbox}
{$linkframework QuartzCore}
{$linkframework OpenGLES}
{$linkframework CoreGraphics}
{$linkframework UIKit}
{$linkframework Foundation}
{$linkframework CoreAudio}

{$PASCALMAINNAME SDL_main}

interface

const
	SDL_SWSURFACE     = $00000000;
	SDL_HWSURFACE     = $00000001;
	SDL_SRCALPHA      = $00010000;

  // Begin SDL.h (Constants)
	SDL_INIT_TIMER    = $00000001;
	SDL_INIT_AUDIO    = $00000010;
	SDL_INIT_VIDEO    = $00000020;
	SDL_INIT_JOYSTICK = $00000200;
	SDL_INIT_HAPTIC   = $00001000;
	SDL_INIT_NOPARACHUTE = $00100000;
	SDL_INIT_EVENTTHREAD = $01000000;
	SDL_INIT_EVERYTHING  = $0000FFFF;
  // End SDL.h

  // Begin SDL_video.h (Constants)
  SDL_WINDOW_FULLSCREEN = $00000001;         //**< fullscreen window */
  SDL_WINDOW_OPENGL = $00000002;             //**< window usable with OpenGL context */
  SDL_WINDOW_SHOWN = $00000004;              //**< window is visible */
  SDL_WINDOW_HIDDEN = $00000008;             //**< window is not visible */
  SDL_WINDOW_BORDERLESS = $00000010;         //**< no window decoration */
  SDL_WINDOW_RESIZABLE = $00000020;          //**< window can be resized */
  SDL_WINDOW_MINIMIZED = $00000040;          //**< window is minimized */
  SDL_WINDOW_MAXIMIZED = $00000080;          //**< window is maximized */
  SDL_WINDOW_INPUT_GRABBED = $00000100;      //**< window has grabbed input focus */
  SDL_WINDOW_INPUT_FOCUS = $00000200;        //**< window has input focus */
  SDL_WINDOW_MOUSE_FOCUS = $00000400;        //**< window has mouse focus */
  SDL_WINDOW_FOREIGN = $00000800;             //**< window not created by SDL */
  // End SDL_video.h

// SDL_types.h constants

  SDL_PRESSED = $01;

{$EXTERNALSYM SDL_PRESSED}

  SDL_RELEASED = $00;

{$EXTERNALSYM SDL_RELEASED}

    //SDL_mouse.h constants

  { Used as a mask when testing buttons in buttonstate

    Button 1:	Left mouse button

    Button 2:	Middle mouse button

    Button 3:	Right mouse button

    Button 4:	Mouse Wheel Up

    Button 5:	Mouse Wheel Down

  }

  SDL_BUTTON_LEFT = 1;
{$EXTERNALSYM SDL_BUTTON_LEFT}

  SDL_BUTTON_MIDDLE = 2;
{$EXTERNALSYM SDL_BUTTON_MIDDLE}

  SDL_BUTTON_RIGHT = 3;
{$EXTERNALSYM SDL_BUTTON_RIGHT}

  SDL_BUTTON_WHEELUP = 4;
{$EXTERNALSYM SDL_BUTTON_WHEELUP}

  SDL_BUTTON_WHEELDOWN = 5;
{$EXTERNALSYM SDL_BUTTON_WHEELDOWN}

  SDL_BUTTON_LMASK = SDL_PRESSED shl (SDL_BUTTON_LEFT - 1);
{$EXTERNALSYM SDL_BUTTON_LMASK}

  SDL_BUTTON_MMASK = SDL_PRESSED shl (SDL_BUTTON_MIDDLE - 1);
{$EXTERNALSYM SDL_BUTTON_MMASK}

  SDL_BUTTON_RMask = SDL_PRESSED shl (SDL_BUTTON_RIGHT - 1);
{$EXTERNALSYM SDL_BUTTON_RMask}

	SDL_APPINPUTFOCUS = 2;
		
{*begin SDL_Event binding*}
	SDL_NOEVENT = 0;            	//**< Unused (do not remove) */
    SDL_WINDOWEVENT = 1;            //**< Window state change */
    SDL_KEYDOWN = 2;                //**< Keys pressed */
    SDL_KEYUP = 3;                  //**< Keys released */
    SDL_TEXTEDITING = 4;            //**< Keyboard text editing (composition) */
    SDL_TEXTINPUT = 5;              //**< Keyboard text input */
    SDL_MOUSEMOTION = 6;            //**< Mouse moved */
    SDL_MOUSEBUTTONDOWN = 7;        //**< Mouse button pressed */
    SDL_MOUSEBUTTONUP = 8;          //**< Mouse button released */
    SDL_MOUSEWHEEL = 9;             //**< Mouse wheel motion */
    SDL_JOYAXISMOTION = 10;          //**< Joystick axis motion */
    SDL_JOYBALLMOTION = 11;          //**< Joystick trackball motion */
    SDL_JOYHATMOTION = 12;           //**< Joystick hat position change */
    SDL_JOYBUTTONDOWN = 13;          //**< Joystick button pressed */
    SDL_JOYBUTTONUP = 14;            //**< Joystick button released */
    SDL_QUITEV = 15;                   //**< User-requested quit */
    SDL_SYSWMEVENT = 16;             //**< System specific event */
    SDL_PROXIMITYIN = 17;            //**< Proximity In event */
    SDL_PROXIMITYOUT = 18;           //**< Proximity Out event */
    SDL_EVENT_RESERVED1 = 19;        //**< Reserved for future use... */
    SDL_EVENT_RESERVED2 = 20;        //**< Reserved for future use... */
    SDL_EVENT_RESERVED3 = 21;        //**< Reserved for future use... */
    //** Events ::SDL_USEREVENT through ::SDL_MAXEVENTS-1 are for your use */
    SDL_USEREVENT = 24;
    (**
     *  This last event is only for bounding internal arrays
     *  It is the number of bits in the event mask datatype -- Uint32
     *)
    SDL_NUMEVENTS = 32;
{*end SDL_Event binding*}
		

	SDL_ASYNCBLIT   = $08000000;
	SDL_ANYFORMAT   = $10000000;
	SDL_HWPALETTE   = $00200000;
	SDL_DOUBLEBUF   = $00400000;
	SDL_FULLSCREEN  = $00800000;
	SDL_HWACCEL     = $08000000;
	SDL_SRCCOLORKEY = $00020000;
	SDL_RLEACCEL    = $08000000;
	SDL_NOFRAME     = $02000000;
	SDL_OPENGL      = $04000000;
	SDL_RESIZABLE   = $01000000;


{$IFDEF ENDIAN_LITTLE}
	RMask = $000000FF;
	GMask = $0000FF00;
	BMask = $00FF0000;
	AMask = $FF000000;
{$ELSE}
	RMask = $FF000000;
	GMask = $00FF0000;
	BMask = $0000FF00;
	AMask = $000000FF;
{$ENDIF}

  (*// SDL_WindowFlags (enum)
  SDL_WINDOW_FULLSCREEN = $00000001;         //*< fullscreen window, implies borderless */
  SDL_WINDOW_OPENGL = $00000002;             //*< window usable with OpenGL context */
  SDL_WINDOW_SHOWN = $00000004;              //*< window is visible */
  SDL_WINDOW_BORDERLESS = $00000008;         //*< no window decoration */
  SDL_WINDOW_RESIZABLE = $00000010;          //*< window can be resized */
  SDL_WINDOW_MINIMIZED = $00000020;          //*< window is minimized */
  SDL_WINDOW_MAXIMIZED = $00000040;          //*< window is maximized */
  SDL_WINDOW_INPUT_GRABBED = $00000100;      //*< window has grabbed input focus */
  SDL_WINDOW_INPUT_FOCUS = $00000200;        //*< window has input focus */
  SDL_WINDOW_MOUSE_FOCUS = $00000400;        //*< window has mouse focus */
  SDL_WINDOW_FOREIGN = $00000800;            //*< window not created by SDL */


  SDL_RENDERER_SINGLEBUFFER = $00000001;     //*< Render directly to the window, if possible */
  SDL_RENDERER_PRESENTCOPY = $00000002;      //*< Present uses a copy from back buffer to the front buffer */
  SDL_RENDERER_PRESENTFLIP2 = $00000004;     //*< Present uses a flip, swapping back buffer and front buffer */
  SDL_RENDERER_PRESENTFLIP3 = $00000008;     //*< Present uses a flip, rotating between two back buffers and a front buffer */
  SDL_RENDERER_PRESENTDISCARD = $00000010;   //*< Present leaves the contents of the backbuffer undefined */
  SDL_RENDERER_PRESENTVSYNC = $00000020;     //*< Present is synchronized with the refresh rate */
  SDL_RENDERER_ACCELERATED = $00000040;       //*< The renderer uses hardware acceleration */


  // Begin SDL_blendmode.h
  SDL_BLENDMODE_NONE = $00000000;     //*< No blending */
  SDL_BLENDMODE_MASK = $00000001;     //*< dst = A ? src : dst (alpha is mask) */
  SDL_BLENDMODE_BLEND = $00000002;    //*< dst = (src * A) + (dst * (1-A)) */
  SDL_BLENDMODE_ADD = $00000004;      //*< dst = (src * A) + dst */
  SDL_BLENDMODE_MOD = $00000008;      //*< dst = src * dst */
  // End SDL_blendmode.h
  *)

  // Pixel stuff
  SDL_PIXELTYPE_UNKNOWN = 0;
  SDL_PIXELTYPE_INDEX1 = 1;
  SDL_PIXELTYPE_INDEX4 = 2;
  SDL_PIXELTYPE_INDEX8 = 3;
  SDL_PIXELTYPE_PACKED8 = 4;
  SDL_PIXELTYPE_PACKED16 = 5;
  SDL_PIXELTYPE_PACKED32 = 6;
  SDL_PIXELTYPE_ARRAYU8 = 7;
  SDL_PIXELTYPE_ARRAYU16 = 8;
  SDL_PIXELTYPE_ARRAYU32 = 9;
  SDL_PIXELTYPE_ARRAYF16 = 10;
  SDL_PIXELTYPE_ARRAYF32 = 11;


  //* Bitmap pixel order, high bit -> low bit. */
  SDL_BITMAPORDER_NONE = 0;
  SDL_BITMAPORDER_4321 = 1;
  SDL_BITMAPORDER_1234 = 2;


  //* Packed component order, high bit -> low bit. */
  SDL_PACKEDORDER_NONE = 0;
  SDL_PACKEDORDER_XRGB = 1;
  SDL_PACKEDORDER_RGBX = 2;
  SDL_PACKEDORDER_ARGB = 3;
  SDL_PACKEDORDER_RGBA = 4;
  SDL_PACKEDORDER_XBGR = 5;
  SDL_PACKEDORDER_BGRX = 6;
  SDL_PACKEDORDER_ABGR = 7;
  SDL_PACKEDORDER_BGRA = 8;


//* Array component order, low byte -> high byte. */
  SDL_ARRAYORDER_NONE = 0;
  SDL_ARRAYORDER_RGB = 1;
  SDL_ARRAYORDER_RGBA = 2;
  SDL_ARRAYORDER_ARGB = 3;
  SDL_ARRAYORDER_BGR = 4;
  SDL_ARRAYORDER_BGRA = 5;
  SDL_ARRAYORDER_ABGR = 6;


//* Packed component layout. */
  SDL_PACKEDLAYOUT_NONE = 0;
  SDL_PACKEDLAYOUT_332 = 1;
  SDL_PACKEDLAYOUT_4444 = 2;
  SDL_PACKEDLAYOUT_1555 = 3;
  SDL_PACKEDLAYOUT_5551 = 4;
  SDL_PACKEDLAYOUT_565 = 5;
  SDL_PACKEDLAYOUT_8888 = 6;
  SDL_PACKEDLAYOUT_2101010 = 7;
  SDL_PACKEDLAYOUT_1010102 = 8;
    
    //SDL_PIXELFORMAT_ABGR8888 = ((1 shl 31) or ((SDL_PIXELTYPE_PACKED32) shl 24) or ((SDL_PACKEDORDER_ABGR) shl 20) or ((SDL_PACKEDLAYOUT_8888) shl 16) or ((32) shl 8) or ((4) shl 0));
     // see:   SDL_DEFINE_PIXELFORMAT(SDL_PIXELTYPE_PACKED32, SDL_PACKEDORDER_ABGR, SDL_PACKEDLAYOUT_8888, 32, 4),
	
	// Pixelformat macros
	{$define SDL_PIXELFORMAT_ABGR8888:=SDL_DEFINE_PIXELFORMAT(SDL_PIXELTYPE_PACKED32, SDL_PACKEDORDER_ABGR, SDL_PACKEDLAYOUT_8888, 32, 4)}


type
  THandle = Cardinal;

  //SDL_types.h types

  // Basic data types

  SDL_Bool = (SDL_FALSE, SDL_TRUE);
  TSDL_Bool = SDL_Bool;

  PUInt8Array = ^TUInt8Array;

  PUInt8 = ^UInt8;

  UInt8 = Byte;

{$EXTERNALSYM UInt8}

  TUInt8Array = array [0..MAXINT shr 1] of UInt8;

  PUInt16 = ^UInt16;

  UInt16 = word;

{$EXTERNALSYM UInt16}

  PSInt16 = ^SInt16;

  SInt16 = smallint;

{$EXTERNALSYM SInt16}

  PUInt32 = ^UInt32;

  UInt32 = Cardinal;

{$EXTERNALSYM UInt32}

  SInt32 = Integer;

{$EXTERNALSYM SInt32}

  PInt = ^Integer;

  PShortInt = ^ShortInt;

  PUInt64 = ^UInt64;
  UInt64 = record
    hi: UInt32;
    lo: UInt32;
  end;

{$EXTERNALSYM UInt64}



  PSInt64 = ^SInt64;
  SInt64 = record
    hi: UInt32;
    lo: UInt32;
  end;

{$EXTERNALSYM SInt64}




        // Begin SDL_rect.h (Types)
	PSDL_Rect = ^TSDL_Rect;
	TSDL_Rect = record
		x, y, w, h: LongInt;
		end;

        PSDL_Point = ^TSDL_Point;
	TSDL_Point = record
		x: Integer;
		y: Integer;
		end;
        // End SDL_rect.h

	PSDL_PixelFormat = ^TSDL_PixelFormat;
	TSDL_PixelFormat = record
		palette: Pointer;
		BitsPerPixel : Byte;
		BytesPerPixel: Byte;
		Rloss : Byte;
		Gloss : Byte;
		Bloss : Byte;
		Aloss : Byte;
		Rshift: Byte;
		Gshift: Byte;
		Bshift: Byte;
		Ashift: Byte;
		RMask : UInt32;
		GMask : UInt32;
		BMask : UInt32;
		AMask : UInt32;
		colorkey: UInt32;
		alpha : Byte;
		end;


	PSDL_Surface = ^TSDL_Surface;
	TSDL_Surface = record
		flags: UInt32; // Read-only

	    format: PSDL_PixelFormat; // Read-only

	    w, h: Integer; // Read-only

	    pitch: Integer; // Read-only

	    pixels: Pointer; // Read-write
	    userdata: Pointer; // Read-write
	    locked: Integer; // Read-only
	    lock_data: Pointer; // Read-only

	

	    // clipping information:

	    clip_rect: TSDL_Rect; // Read-only

	    map: Pointer; // PSDL_BlitMap; //   Private

	    // format version, bumped at every change to invalidate blit maps

	    format_version: Cardinal; // Private

	    refcount: Integer;
	end;


	PSDL_Color = ^TSDL_Color;
	TSDL_Color = record
		case byte of
			0: (	r: Byte;
				g: Byte;
				b: Byte;
				unused: Byte;
			   );
			1: (	value: Longword);
		end;


	PSDL_RWops = ^TSDL_RWops;
	TSeek  = function( context: PSDL_RWops; offset: LongInt; whence: LongInt ): LongInt; cdecl;
	TRead  = function( context: PSDL_RWops; Ptr: Pointer; size: LongInt; maxnum : LongInt ): LongInt;  cdecl;
	TWrite = function( context: PSDL_RWops; Ptr: Pointer; size: LongInt; num: LongInt ): LongInt; cdecl;
	TClose = function( context: PSDL_RWops ): LongInt; cdecl;

	TStdio = record
		autoclose: LongInt;
		fp: pointer;
		end;

	TMem = record
		base: PByte;
		here: PByte;
		stop: PByte;
		end;

	TUnknown = record
		data1: Pointer;
		end;

	TSDL_RWops = record
		seek: TSeek;
		read: TRead;
		write: TWrite;
		close: TClose;
		type_: Longword;
		case Byte of
			0: (stdio: TStdio);
			1: (mem: TMem);
			2: (unknown: TUnknown);
			end;

	TSDL_KeySym = record
		scancode: Byte;
		sym: Longword;
		modifier: Longword;
		unicode: Word;
		end;


{* SDL_Event type definition *}
	
	TSDL_WindowEvent = record
		type_: byte;
		gain: byte;
		state: byte;
		windowID: LongInt;
		data1, data2: LongInt;
		end;

// implement SDL_TextEditingEvent + SDL_TextInputEvent for sdl13

	TSDL_MouseMotionEvent = record
		type_: byte;
		which: byte;
		state: byte;
		windowID: LongInt;
		x, y, xrel, yrel : LongInt;
		pressure, pressure_max, pressure_min,
		rotation, tilt, cursor: LongInt; 
		end;

	TSDL_KeyboardEvent = record
		type_: Byte;
		windowID: LongInt;
		which: Byte;
		state: Byte;
		keysym: TSDL_KeySym;
		end;

	TSDL_MouseButtonEvent = record
		_type,
		which,
		button,
		state: byte;
		windowID: LongInt;
		x, y: LongInt;
		end;

	TSDL_MouseWheelEvent = record
		type_: Byte;
		windowID: LongInt;
		which: Byte;
		x, y: LongInt;
		end;

	TSDL_JoyAxisEvent = record
		type_: Byte;
		which: Byte;
		axis: Byte;
		value: LongInt;
		end;
			
	TSDL_JoyBallEvent = record
		type_: Byte;
		which: Byte;
		ball: Byte;
		xrel, yrel: LongInt;
		end;

	TSDL_JoyHatEvent = record
		type_: Byte;
		which: Byte;
		hat: Byte;
		value: Byte;
		end;
	
	TSDL_JoyButtonEvent = record
		type_: Byte;
		which: Byte;
		button: Byte;
		state: Byte;
		end;

	TSDL_QuitEvent = record
    type_: Byte;
  end;

	PSDL_Event = ^TSDL_Event;
	TSDL_Event = record
		case Byte of
			SDL_NOEVENT: (type_: byte);
			SDL_WINDOWEVENT: (active: TSDL_WindowEvent);
			SDL_KEYDOWN,
			SDL_KEYUP: (key: TSDL_KeyboardEvent);
			SDL_TEXTEDITING,
			SDL_TEXTINPUT: (txtin: byte);
			SDL_MOUSEMOTION: (motion: TSDL_MouseMotionEvent);
			SDL_MOUSEBUTTONDOWN,
			SDL_MOUSEBUTTONUP: (button: TSDL_MouseButtonEvent);
			SDL_MOUSEWHEEL: (wheel: TSDL_MouseWheelEvent);
			SDL_JOYAXISMOTION: (jaxis: TSDL_JoyAxisEvent);
			SDL_JOYHATMOTION: (jhat: TSDL_JoyHatEvent);
			SDL_JOYBALLMOTION: (jball: TSDL_JoyBallEvent);
			SDL_JOYBUTTONDOWN,
			SDL_JOYBUTTONUP: (jbutton: TSDL_JoyButtonEvent);
			SDL_QUITEV: (quit: TSDL_QuitEvent);
		end;

	PByteArray = ^TByteArray;
	TByteArray = array[0..65535] of Byte;
	PLongWordArray = ^TLongWordArray;
	TLongWordArray = array[0..16383] of LongWord;

	PSDL_Thread = Pointer;
	PSDL_mutex = Pointer;

	(*
	TSDL_ArrayByteOrder = (  // array component order, low byte -> high byte 
		SDL_ARRAYORDER_NONE,
		SDL_ARRAYORDER_RGB,
		SDL_ARRAYORDER_RGBA,
		SDL_ARRAYORDER_ARGB,
		SDL_ARRAYORDER_BGR,
		SDL_ARRAYORDER_BGRA,
		SDL_ARRAYORDER_ABGR
		);*)
		
// Joystick/Controller support
	PSDL_Joystick = ^TSDL_Joystick;
	TSDL_Joystick = record
			end;

  // Begin SDL_blendmode.h
  TSDL_BlendMode = (
    SDL_BLENDMODE_NONE = $00000000,     //**< No blending */
    SDL_BLENDMODE_BLEND = $00000001,    //**< dst = (src * A) + (dst * (1-A)) */
    SDL_BLENDMODE_ADD = $00000002,      //**< dst = (src * A) + dst */
    SDL_BLENDMODE_MOD = $00000004       //**< dst = src * dst */
  );
  // End SDL_blendmode.h

  // Begin SDL_video.h (Types)
  PSDL_DisplayMode = ^TSDL_DisplayMode;
  TSDL_DisplayMode = record
    format: UInt32;
    w: Integer;
    h: Integer;
    refresh_rate: Integer;
    driverdata: Pointer;
  end;

  PSDL_Window = Pointer;

  TSDL_WindowEventID = (
    SDL_WINDOWEVENT_NONE,           //**< Never used */
    SDL_WINDOWEVENT_SHOWN,          //**< Window has been shown */
    SDL_WINDOWEVENT_HIDDEN,         //**< Window has been hidden */
    SDL_WINDOWEVENT_EXPOSED,        //**< Window has been exposed and should be redrawn */
    SDL_WINDOWEVENT_MOVED,          //**< Window has been moved to data1, data2 */
    SDL_WINDOWEVENT_RESIZED,        //**< Window has been resized to data1xdata2 */
    SDL_WINDOWEVENT_SIZE_CHANGED,   //**< The window size has changed, either as a result of an API call or through the system or user changing the window size. */
    SDL_WINDOWEVENT_MINIMIZED,      //**< Window has been minimized */
    SDL_WINDOWEVENT_MAXIMIZED,      //**< Window has been maximized */
    SDL_WINDOWEVENT_RESTORED,       //**< Window has been restored to normal size and position */
    SDL_WINDOWEVENT_ENTER,          //**< Window has gained mouse focus */
    SDL_WINDOWEVENT_LEAVE,          //**< Window has lost mouse focus */
    SDL_WINDOWEVENT_FOCUS_GAINED,   //**< Window has gained keyboard focus */
    SDL_WINDOWEVENT_FOCUS_LOST,     //**< Window has lost keyboard focus */
    SDL_WINDOWEVENT_CLOSE           //**< The window manager requests that the window be closed */
  );

  PSDL_GLContext = Pointer;
	TSDL_GLattr =
  (
		SDL_GL_RED_SIZE,
		SDL_GL_GREEN_SIZE,
		SDL_GL_BLUE_SIZE,
		SDL_GL_ALPHA_SIZE,
		SDL_GL_BUFFER_SIZE,
		SDL_GL_DOUBLEBUFFER,
		SDL_GL_DEPTH_SIZE,
		SDL_GL_STENCIL_SIZE,
		SDL_GL_ACCUM_RED_SIZE,
		SDL_GL_ACCUM_GREEN_SIZE,
		SDL_GL_ACCUM_BLUE_SIZE,
		SDL_GL_ACCUM_ALPHA_SIZE,
		SDL_GL_STEREO,
		SDL_GL_MULTISAMPLEBUFFERS,
		SDL_GL_MULTISAMPLESAMPLES,
		SDL_GL_ACCELERATED_VISUAL,
		SDL_GL_RETAINED_BACKING,
		SDL_GL_CONTEXT_MAJOR_VERSION,
		SDL_GL_CONTEXT_MINOR_VERSION
	);
  // End SDL_video.h

  // Begin SDL_render.h (Types)
  PSDL_RendererInfo = ^TSDL_RendererInfo;
  TSDL_RendererInfo = record
    name: PChar;           //**< The name of the renderer */
    flags: UInt32;               //**< Supported ::SDL_RendererFlags */
    num_texture_formats: UInt32; //**< The number of available texture formats */
    texture_formats: array[0..16] of UInt32; //**< The available texture formats */
    max_texture_width: Integer;      //**< The maximimum texture width */
    max_texture_height: Integer;     //**< The maximimum texture height */
  end;

  PSDL_Renderer = Pointer;
  PSDL_Texture = Pointer;

  TSDL_RendererFlags = (
    SDL_RENDERER_SOFTWARE = $00000001,         //**< The renderer is a software fallback */
    SDL_RENDERER_ACCELERATED = $00000002,      //**< The renderer uses hardware acceleration */
    SDL_RENDERER_PRESENTVSYNC = $00000004      //**< Present is synchronized with the refresh rate */
  );

  TSDL_TextureAccess = (
    SDL_TEXTUREACCESS_STATIC,    //**< Changes rarely, not lockable */
    SDL_TEXTUREACCESS_STREAMING  //**< Changes frequently, lockable */
  );

  TSDL_TextureModulate = (
    SDL_TEXTUREMODULATE_NONE = $00000000,     //**< No modulation */
    SDL_TEXTUREMODULATE_COLOR = $00000001,    //**< srcC = srcC * color */
    SDL_TEXTUREMODULATE_ALPHA = $00000002     //**< srcA = srcA * alpha */
  );
  // End SDL_render.h




// Begin SDL.h (Prototypes)
function  SDL_Init(flags: UInt32): Integer; cdecl; external;
function  SDL_InitSubSystem(flags: UInt32): Integer; cdecl; external;
procedure SDL_QuitSubSystem(flags: UInt32); cdecl; external;
function SDL_WasInit(flags: UInt32): Uint32; cdecl; external;
procedure SDL_Quit; cdecl; external;
// End SDL.h

// Begin SDL_main.h
function SDL_RegisterApp(name: PChar; style: UInt32; hInst: Pointer): Integer; cdecl; external;
procedure SDL_UnregisterApp(); cdecl; external;
// End SDL_main.h

function  SDL_VideoDriverName(var namebuf; maxlen: LongInt): PChar; cdecl; external;
procedure SDL_EnableUNICODE(enable: LongInt); cdecl; external;

procedure SDL_Delay(msec: Longword); cdecl; external;
function  SDL_GetTicks: Longword; cdecl; external;

function  SDL_MustLock(Surface: PSDL_Surface): Boolean;
function  SDL_LockSurface(Surface: PSDL_Surface): LongInt; cdecl; external;
procedure SDL_UnlockSurface(Surface: PSDL_Surface); cdecl; external;

function  SDL_GetError: PChar; cdecl; external;

function  SDL_SetVideoMode(width, height, bpp: LongInt; flags: Longword): PSDL_Surface; cdecl; external;
function  SDL_CreateRGBSurface(flags: Longword; Width, Height, Depth: LongInt; RMask, GMask, BMask, AMask: Longword): PSDL_Surface; cdecl; external;
function  SDL_CreateRGBSurfaceFrom(pixels: Pointer; width, height, depth, pitch: LongInt; RMask, GMask, BMask, AMask: Longword): PSDL_Surface; cdecl; external;
procedure SDL_FreeSurface(Surface: PSDL_Surface); cdecl; external;
function  SDL_SetColorKey(surface: PSDL_Surface; flag, key: Longword): LongInt; cdecl; external;
function  SDL_SetAlpha(surface: PSDL_Surface; flag, key: Longword): LongInt; cdecl; external;
function  SDL_ConvertSurface(src: PSDL_Surface; fmt: PSDL_PixelFormat; flags: LongInt): PSDL_Surface; cdecl; external;

function  SDL_UpperBlit(src: PSDL_Surface; srcrect: PSDL_Rect; dst: PSDL_Surface; dstrect: PSDL_Rect): LongInt; cdecl; external;
function  SDL_FillRect(dst: PSDL_Surface; dstrect: PSDL_Rect; color: Longword): LongInt; cdecl; external;
procedure SDL_UpdateRect(Screen: PSDL_Surface; x, y: LongInt; w, h: Longword); cdecl; external;
function  SDL_Flip(Screen: PSDL_Surface): LongInt; cdecl; external;

procedure SDL_GetRGB(pixel: Longword; fmt: PSDL_PixelFormat; r, g, b: PByte); cdecl; external;
function  SDL_MapRGB(format: PSDL_PixelFormat; r, g, b: Byte): Longword; cdecl; external;
function  SDL_MapRGBA(format: PSDL_PixelFormat; r, g, b, a: Byte): Longword; cdecl; external;

function  SDL_DisplayFormat(Surface: PSDL_Surface): PSDL_Surface; cdecl; external;
function  SDL_DisplayFormatAlpha(Surface: PSDL_Surface): PSDL_Surface; cdecl; external;

function  SDL_RWFromFile(filename, mode: PChar): PSDL_RWops; cdecl; external;
function  SDL_LoadBMP_RW(src: PSDL_RWops; freesrc: Integer): PSDL_Surface; cdecl; external;
function  SDL_SaveBMP_RW(surface: PSDL_Surface; dst: PSDL_RWops; freedst: LongInt): LongInt; cdecl; external;

// Begin SDL_clipboard.h
function SDL_SetClipboardText(const text: PChar): Integer; cdecl; external;
function SDL_GetClipboardText(): PChar; cdecl; external;
function SDL_HasClipboardText(): TSDL_Bool; cdecl; external;
// End SDL_clipboard.h

// Begin SDL_video.h (Prototypes)
function SDL_GetNumVideoDrivers(): Integer; cdecl; external;
function SDL_GetVideoDriver(index: Integer): PChar; cdecl; external;
function SDL_VideoInit(const driver_name: PChar): Integer; cdecl; external;
procedure SDL_VideoQuit(); cdecl; external;


function SDL_GetCurrentVideoDriver(): PChar; cdecl; external;
function SDL_GetNumVideoDisplays(): Integer; cdecl; external;
function SDL_GetDisplayBounds(displayIndex: Integer; rect: PSDL_Rect): Integer; cdecl; external;
function SDL_GetNumDisplayModes(displayIndex: Integer): Integer; cdecl; external;
function SDL_GetDisplayMode(displayIndex: Integer; modeIndex: Integer; mode: PSDL_DisplayMode): Integer; cdecl; external;
function SDL_GetDesktopDisplayMode(displayIndex: Integer; mode: PSDL_DisplayMode): Integer; cdecl; external;
function SDL_GetCurrentDisplayMode(displayIndex: Integer; mode: PSDL_DisplayMode): Integer; cdecl; external;
function SDL_GetClosestDisplayMode(displayIndex: Integer; const mode: PSDL_DisplayMode; closest: PSDL_DisplayMode): PSDL_DisplayMode; cdecl; external;


function SDL_GetWindowDisplay(window: PSDL_Window): Integer; cdecl; external;
function SDL_SetWindowDisplayMode(window: PSDL_Window; const mode: PSDL_DisplayMode): Integer; cdecl; external;
function SDL_GetWindowDisplayMode(window: PSDL_Window; mode: PSDL_DisplayMode): Integer; cdecl; external;
function SDL_GetWindowPixelFormat(window: PSDL_Window): UInt32; cdecl; external;

function SDL_CreateWindow(const title: PChar; x: Integer; y: Integer; w: Integer; h: Integer; flags: UInt32): PSDL_Window; cdecl; external;
function SDL_CreateWindowFrom(const data: Pointer): PSDL_Window; cdecl; external;

function SDL_GetWindowID(window: PSDL_Window): UInt32; cdecl; external;
function SDL_GetWindowFromID(id: UInt32): PSDL_Window; cdecl; external;

function SDL_GetWindowFlags(window: PSDL_Window): UInt32; cdecl; external;
procedure SDL_SetWindowTitle(window: PSDL_Window; const title: PChar); cdecl; external;
function SDL_GetWindowTitle(window: PSDL_Window): PChar; cdecl; external;
procedure SDL_SetWindowIcon(window: PSDL_Window; icon: PSDL_Surface); cdecl; external;
procedure SDL_SetWindowData(window: PSDL_Window; const name: PChar; userdata: Pointer); cdecl; external;
function SDL_GetWindowData(window: PSDL_Window; const name: PChar): Pointer; cdecl; external;

procedure SDL_SetWindowPosition(window: PSDL_Window; x: Integer; y: Integer); cdecl; external;
procedure SDL_GetWindowPosition(window: PSDL_Window; var x: Integer; var y: Integer); cdecl; external;
procedure SDL_SetWindowSize(window: PSDL_Window; w: Integer; h: Integer); cdecl; external;
procedure SDL_GetWindowSize(window: PSDL_Window; var w: Integer; var h: Integer); cdecl; external;
procedure SDL_ShowWindow(window: PSDL_Window); cdecl; external;
procedure SDL_HideWindow(window: PSDL_Window); cdecl; external;
procedure SDL_RaiseWindow(window: PSDL_Window); cdecl; external;
procedure SDL_MaximizeWindow(window: PSDL_Window); cdecl; external;
procedure SDL_MinimizeWindow(window: PSDL_Window); cdecl; external;
procedure SDL_RestoreWindow(window: PSDL_Window); cdecl; external;
function SDL_SetWindowFullscreen(window: PSDL_Window; fullscreen: TSDL_Bool): Integer; cdecl; external;


function SDL_GetWindowSurface(window: PSDL_Window): PSDL_Surface; cdecl; external;
function SDL_UpdateWindowSurface(window: PSDL_Window): Integer; cdecl; external;
function SDL_UpdateWindowSurfaceRects(window: PSDL_Window; rects: PSDL_Rect; numrects: Integer): Integer; cdecl; external;
procedure SDL_SetWindowGrab(window: PSDL_Window; grabbed: TSDL_bool); cdecl; external;
function SDL_GetWindowGrab(window: PSDL_Window): TSDL_bool; cdecl; external;

function SDL_SetWindowBrightness(window: PSDL_Window; brightness: Single): Integer; cdecl; external;
function SDL_GetWindowBrightness(window: PSDL_Window): Single; cdecl; external;
function SDL_SetWindowGammaRamp(window: PSDL_Window; const red: PUInt16; const green: PUInt16; const blue: PUInt16): Integer; cdecl; external;
function SDL_GetWindowGammaRamp(window: PSDL_Window; var red: UInt16; var green: UInt16; var blue: UInt16): Integer; cdecl; external;

procedure SDL_DestroyWindow(window: PSDL_Window); cdecl; external;

function SDL_IsScreenSaverEnabled(): TSDL_Bool; cdecl; external;
procedure SDL_EnableScreenSaver(); cdecl; external;
procedure SDL_DisableScreenSaver(); cdecl; external;

//OpenGL support functions

function SDL_GL_LoadLibrary(const path: PChar): Integer; cdecl; external;
function SDL_GL_GetProcAddress(const proc: PChar): Pointer; cdecl; external;
procedure SDL_GL_UnloadLibrary(); cdecl; external;
function SDL_GL_ExtensionSupported(const extension: PChar): TSDL_Bool; cdecl; external;
function SDL_GL_SetAttribute(attr: TSDL_GLattr; value: Integer): Integer; cdecl; external;
function SDL_GL_GetAttribute(attr: TSDL_GLattr; var value: Integer): Integer; cdecl; external;
function SDL_GL_CreateContext(window: PSDL_Window): PSDL_GLContext; cdecl; external;
function SDL_GL_MakeCurrent(window: PSDL_Window; context: PSDL_GLContext): Integer; cdecl; external;
function SDL_GL_SetSwapInterval(interval: Integer): Integer; cdecl; external;
function SDL_GL_GetSwapInterval(): Integer; cdecl; external;
procedure SDL_GL_SwapWindow(window: PSDL_Window); cdecl; external;
procedure SDL_GL_DeleteContext(context: PSDL_GLContext); cdecl; external;
procedure SDL_GL_SwapBuffers(); cdecl; external;
// End SDL_video.h

// Begin SDL_render.h (Prototypes)

function SDL_GetNumRenderDrivers(): Integer; cdecl; external;

function SDL_GetRenderDriverInfo(index: Integer; var info: TSDL_RendererInfo): Integer; cdecl; external;

function SDL_CreateRenderer(window: PSDL_Window; index: Integer; flags: UInt32): PSDL_Renderer; cdecl; external;

function SDL_CreateSoftwareRenderer(surface: PSDL_Surface): PSDL_Renderer; cdecl; external;

function SDL_GetRenderer(window: PSDL_Window): PSDL_Renderer; cdecl; external;

function SDL_GetRendererInfo(renderer: PSDL_Renderer; var info: TSDL_RendererInfo): Integer; cdecl; external;

function SDL_CreateTexture(renderer: PSDL_Renderer; format: UInt32; access: Integer; w: Integer; h: Integer): PSDL_Texture; cdecl; external;

function SDL_CreateTextureFromSurface(renderer: PSDL_Renderer; surface: PSDL_Surface): PSDL_Texture; cdecl; external;

function SDL_QueryTexture(texture: PSDL_Texture; var format: UInt32; var access: Integer; var w: Integer; var h: Integer): Integer; cdecl; external;

function SDL_SetTextureColorMod(texture: PSDL_Texture; r: UInt8; g: UInt8; b: UInt8): Integer; cdecl; external;
function SDL_GetTextureColorMod(texture: PSDL_Texture; var r: UInt8; var g: UInt8; var b: UInt8): Integer; cdecl; external;

function SDL_SetTextureAlphaMod(texture: PSDL_Texture; alpha: UInt8): Integer; cdecl; external;
function SDL_GetTextureAlphaMod(texture: PSDL_Texture; var alpha: UInt8): Integer; cdecl; external;

function SDL_SetTextureBlendMode(texture: PSDL_Texture; blendMode: TSDL_BlendMode): Integer; cdecl; external;
function SDL_GetTextureBlendMode(texture: PSDL_Texture; var blendMode: TSDL_BlendMode): Integer; cdecl; external;

function SDL_UpdateTexture(texture: PSDL_Texture; const rect: PSDL_Rect; const pixels: Pointer; pitch: Integer): Integer; cdecl; external;

function SDL_LockTexture(texture: PSDL_Texture; const rect: PSDL_Rect; var pixels: Pointer; var pitch: Integer): Integer; cdecl; external;
procedure SDL_UnlockTexture(texture: PSDL_Texture); cdecl; external;

function SDL_RenderSetViewport(renderer: PSDL_Renderer; const rect: PSDL_Rect): Integer; cdecl; external;
procedure SDL_RenderGetViewport(renderer: PSDL_Renderer; var rect: TSDL_Rect); cdecl; external;

function SDL_SetRenderDrawColor(renderer: PSDL_Renderer; r: UInt8; g: UInt8; b: UInt8; a: UInt8): Integer; cdecl; external;
function SDL_GetRenderDrawColor(renderer: PSDL_Renderer; var r: UInt8; var g: UInt8; var b: UInt8; var a: UInt8): Integer; cdecl; external;

function SDL_SetRenderDrawBlendMode(renderer: PSDL_Renderer; blendMode: TSDL_BlendMode): Integer; cdecl; external;
function SDL_GetRenderDrawBlendMode(renderer: PSDL_Renderer; var blendMode: TSDL_BlendMode): Integer; cdecl; external;

function SDL_RenderClear(renderer: PSDL_Renderer): Integer; cdecl; external;

function SDL_RenderDrawPoint(renderer: PSDL_Renderer; x: Integer; y: Integer): Integer; cdecl; external;
function SDL_RenderDrawPoints(renderer: PSDL_Renderer; const points: PSDL_Point; count: Integer): Integer; cdecl; external;
function SDL_RenderDrawLine(renderer: PSDL_Renderer; x1: Integer; y1: Integer; x2: Integer; y2: Integer): Integer; cdecl; external;
function SDL_RenderDrawLines(renderer: PSDL_Renderer; const points: PSDL_Point; count: Integer): Integer; cdecl; external;
function SDL_RenderDrawRect(renderer: PSDL_Renderer; const rect: PSDL_Rect): Integer; cdecl; external;
function SDL_RenderDrawRects(renderer: PSDL_Renderer; const rects: PSDL_Rect; count: Integer): Integer; cdecl; external;
function SDL_RenderFillRect(renderer: PSDL_Renderer; const rect: PSDL_Rect): Integer; cdecl; external;
function SDL_RenderFillRects(renderer: PSDL_Renderer; const rects: PSDL_Rect; count: Integer): Integer; cdecl; external;

function SDL_RenderCopy(renderer: PSDL_Renderer; texture: PSDL_Texture; const srcrect: PSDL_Rect; const dstrect: PSDL_Rect): Integer; cdecl; external;

function SDL_RenderReadPixels(renderer: PSDL_Renderer; const rect: PSDL_Rect; format: UInt32; pixels: Pointer; pitch: Integer): Integer; cdecl; external;

procedure SDL_RenderPresent(renderer: PSDL_Renderer); cdecl; external;
procedure SDL_DestroyTexture(texture: PSDL_Texture); cdecl; external;
procedure SDL_DestroyRenderer(renderer: PSDL_Renderer); cdecl; external;

// End SDL_render.h



function  SDL_SelectMouse(index: LongInt): LongInt; cdecl; external;
function  SDL_GetRelativeMouseState(index: Integer; var x: Integer; var y: Integer): UInt8; cdecl; external;
function  SDL_GetNumMice: LongInt; cdecl; external;
function  SDL_PixelFormatEnumToMasks(format: UInt32; bpp: PInteger; Rmask: PUInt32; Gmask: PUInt32; Bmask: PUInt32; Amask: PUInt32): TSDL_Bool; cdecl; external;

function  SDL_GetKeyState(numkeys: PLongInt): PByteArray; cdecl; external name 'SDL_GetKeyboardState';
function  SDL_GetMouseState(var x: Integer; var y: Integer): UInt8; cdecl; external;
function  SDL_GetKeyName(key: Longword): PChar; cdecl; external;
procedure SDL_WarpMouse(x, y: Word); cdecl; external;

procedure SDL_PumpEvents; cdecl; external;
function  SDL_PollEvent(event: PSDL_Event): Integer; cdecl; external;
function  SDL_WaitEvent(event: PSDL_Event): Integer; cdecl; external;

function  SDL_ShowCursor(toggle: LongInt): LongInt; cdecl; external;

procedure SDL_WM_SetCaption(title: PChar; icon: PChar); cdecl; external;
function  SDL_WM_ToggleFullScreen(surface: PSDL_Surface): LongInt; cdecl; external;

function  SDL_CreateMutex: PSDL_mutex; cdecl; external;
procedure SDL_DestroyMutex(mutex: PSDL_mutex); cdecl; external;
function  SDL_LockMutex(mutex: PSDL_mutex): LongInt; cdecl; external name 'SDL_mutexP';
function  SDL_UnlockMutex(mutex: PSDL_mutex): LongInt; cdecl; external name 'SDL_mutexV';

function  SDL_NumJoysticks: LongInt; cdecl; external;
function  SDL_JoystickName(idx: LongInt): PChar; cdecl; external;
function  SDL_JoystickOpen(idx: LongInt): PSDL_Joystick; cdecl; external;
function  SDL_JoystickOpened(idx: LongInt): LongInt; cdecl; external;
function  SDL_JoystickIndex(joy: PSDL_Joystick): LongInt; cdecl; external;
function  SDL_JoystickNumAxes(joy: PSDL_Joystick): LongInt; cdecl; external;
function  SDL_JoystickNumBalls(joy: PSDL_Joystick): LongInt; cdecl; external;
function  SDL_JoystickNumHats(joy: PSDL_Joystick): LongInt; cdecl; external;
function  SDL_JoystickNumButtons(joy: PSDL_Joystick): LongInt; cdecl; external;
procedure SDL_JoystickUpdate; cdecl; external;
function  SDL_JoystickEventState(state: LongInt): LongInt; cdecl; external;
function  SDL_JoystickGetAxis(joy: PSDL_Joystick; axis: LongInt): LongInt; cdecl; external;
function  SDL_JoystickGetBall(joy: PSDL_Joystick; ball: LongInt; dx: PInteger; dy: PInteger): Word; cdecl; external;
function  SDL_JoystickGetHat(joy: PSDL_Joystick; hat: LongInt): Byte; cdecl; external;
function  SDL_JoystickGetButton(joy: PSDL_Joystick; button: LongInt): Byte; cdecl; external;
procedure SDL_JoystickClose(joy: PSDL_Joystick); cdecl; external;




function SDL_LoadBMP(filename: PChar): PSDL_Surface;
function SDL_SaveBMP(surface: PSDL_Surface; filename: PChar): Integer;

function SDL_Define_PixelFormat(type_, order, layout, bits, bytes: UInt32): UInt32;

// Begin SDL_rect.h (Prototypes)
function SDL_RectEmpty(rect: TSDL_Rect): Boolean;
function SDL_RectEquals(rectA, rectB: TSDL_Rect): Boolean;


function SDL_HasIntersection(const A: PSDL_Rect; const B: PSDL_Rect): TSDL_Bool; cdecl; external;
function SDL_IntersectRect(const A: PSDL_Rect; const B: PSDL_Rect; var rResult: TSDL_Rect): TSDL_Bool; cdecl; external;
procedure SDL_UnionRect(const A: PSDL_Rect; const B: PSDL_Rect; var rResult: TSDL_Rect); cdecl; external;
function SDL_EnclosePoints(const points: PSDL_Point; count: Integer; const clip: PSDL_Rect; var rResult : TSDL_Rect): TSDL_Bool; cdecl; external;
function SDL_IntersectRectAndLine(const rect: PSDL_Rect; X1: PInteger; Y1: PInteger; X2: PInteger; Y2: PInteger): TSDL_Bool; cdecl; external;
// End SDL_rect.h




implementation

function SDL_MustLock(Surface: PSDL_Surface): Boolean;
begin
  Result := ((surface^.flags and  SDL_RLEACCEL) <> 0)
end;

function SDL_LoadBMP(filename: PChar): PSDL_Surface;

begin

  Result := SDL_LoadBMP_RW(SDL_RWFromFile(filename, 'rb'), 1);

end;

function SDL_SaveBMP(surface: PSDL_Surface; filename: PChar): Integer;

begin

  Result := SDL_SaveBMP_RW(surface, SDL_RWFromFile(filename, 'wb'), 1);

end;

function SDL_Define_PixelFormat(type_, order, layout, bits, bytes: UInt32): UInt32;
begin
  Result := ((1 shl 31) or ((type_) shl 24) or ((order) shl 20) or ((layout) shl 16) or ((bits) shl 8) or ((bytes) shl 0));
end;


function SDL_RectEmpty(rect: TSDL_Rect): Boolean;
begin
  if (rect.w <= 0) or (rect.h <= 0) then Result := true
  else Result := false;
end;

function SDL_RectEquals(rectA, rectB: TSDL_Rect): Boolean;
begin
  if (rectA.x = rectB.x) and (rectA.y = rectB.y) and (rectA.w = rectB.w) and (rectA.h = rectB.h) then Result := true
  else Result := false;
end;


end.
