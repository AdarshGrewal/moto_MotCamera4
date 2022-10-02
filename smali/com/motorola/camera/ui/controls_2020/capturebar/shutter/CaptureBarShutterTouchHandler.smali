.class public final Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;
.super Ljava/lang/Object;
.source "CaptureBarShutterTouchHandler.kt"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$OnCancelPendingInputEventsListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ClickableViewAccessibility"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCaptureBarShutterTouchHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CaptureBarShutterTouchHandler.kt\ncom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,192:1\n1#2:193\n*E\n"
.end annotation


# instance fields
.field public final actionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;",
            "Ljava/util/Map<",
            "Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction$EventType;",
            "Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction;",
            ">;>;"
        }
    .end annotation
.end field

.field public final am:Landroid/view/accessibility/AccessibilityManager;

.field public downEvent:Landroid/view/MotionEvent;

.field public final eventListener:Lcom/motorola/camera/EventListener;

.field public longClickable:Z

.field public longExposureStart:J

.field public longPress:Z

.field public shouldTriggerShutterCancel:Z

.field public final shutter:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;Lcom/motorola/camera/EventListener;)V
    .locals 13

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->shutter:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;

    .line 3
    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->eventListener:Lcom/motorola/camera/EventListener;

    .line 4
    const-class p2, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;

    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p2

    invoke-interface {p2}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object p2

    const-class v0, Landroid/view/accessibility/AccessibilityManager;

    .line 6
    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    const-string v0, "null cannot be cast to non-null type android.view.accessibility.AccessibilityManager"

    .line 7
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Landroid/view/accessibility/AccessibilityManager;

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->am:Landroid/view/accessibility/AccessibilityManager;

    const/4 p2, 0x6

    new-array v0, p2, [Lkotlin/Pair;

    .line 8
    sget-object v1, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->PHOTO:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    new-array p2, p2, [Lkotlin/Pair;

    .line 9
    sget-object v2, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction$EventType;->TOUCH_DOWN:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction$EventType;

    new-instance v3, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/DefaultTouchDownAction;

    invoke-direct {v3}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/DefaultTouchDownAction;-><init>()V

    .line 10
    new-instance v4, Lkotlin/Pair;

    invoke-direct {v4, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    aput-object v4, p2, v2

    .line 11
    sget-object v3, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction$EventType;->TOUCH_UP:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction$EventType;

    new-instance v4, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/DefaultTouchUpAction;

    invoke-direct {v4}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/DefaultTouchUpAction;-><init>()V

    .line 12
    new-instance v5, Lkotlin/Pair;

    invoke-direct {v5, v3, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x1

    aput-object v5, p2, v3

    .line 13
    sget-object v4, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction$EventType;->CLICK:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction$EventType;

    new-instance v5, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/DefaultClickAction;

    invoke-direct {v5}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/DefaultClickAction;-><init>()V

    .line 14
    new-instance v6, Lkotlin/Pair;

    invoke-direct {v6, v4, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v5, 0x2

    aput-object v6, p2, v5

    .line 15
    sget-object v6, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction$EventType;->LONG_PRESS_START:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction$EventType;

    new-instance v7, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/PhotoLongPressStartAction;

    invoke-direct {v7}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/PhotoLongPressStartAction;-><init>()V

    .line 16
    new-instance v8, Lkotlin/Pair;

    invoke-direct {v8, v6, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v7, 0x3

    aput-object v8, p2, v7

    .line 17
    sget-object v8, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction$EventType;->LONG_PRESS_END:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction$EventType;

    new-instance v9, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/BasicLongPressEndAction;

    invoke-direct {v9}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/BasicLongPressEndAction;-><init>()V

    .line 18
    new-instance v10, Lkotlin/Pair;

    invoke-direct {v10, v8, v9}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v9, 0x4

    aput-object v10, p2, v9

    .line 19
    sget-object v10, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction$EventType;->CANCEL:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction$EventType;

    new-instance v11, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterCancelAction;

    invoke-direct {v11}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterCancelAction;-><init>()V

    .line 20
    new-instance v12, Lkotlin/Pair;

    invoke-direct {v12, v10, v11}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v10, 0x5

    aput-object v12, p2, v10

    .line 21
    invoke-static {p2}, Lkotlin/collections/MapsKt___MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p2

    .line 22
    new-instance v11, Lkotlin/Pair;

    invoke-direct {v11, v1, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v11, v0, v2

    .line 23
    sget-object p2, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->PHOTO_CAPTURING:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    .line 24
    new-instance v1, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/BasicLongPressEndAction;

    invoke-direct {v1}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/BasicLongPressEndAction;-><init>()V

    .line 25
    new-instance v11, Lkotlin/Pair;

    invoke-direct {v11, v8, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 26
    invoke-static {v11}, Lkotlin/collections/MapsKt__MapsJVMKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v1

    .line 27
    new-instance v11, Lkotlin/Pair;

    invoke-direct {v11, p2, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v11, v0, v3

    .line 28
    sget-object p2, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->VIDEO_IDLE:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    .line 29
    new-instance v1, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/BasicClickAction;

    invoke-direct {v1}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/BasicClickAction;-><init>()V

    .line 30
    new-instance v11, Lkotlin/Pair;

    invoke-direct {v11, v4, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 31
    invoke-static {v11}, Lkotlin/collections/MapsKt__MapsJVMKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v1

    .line 32
    new-instance v11, Lkotlin/Pair;

    invoke-direct {v11, p2, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v11, v0, v5

    .line 33
    sget-object p2, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->VIDEO_RECORDING:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    new-array v1, v5, [Lkotlin/Pair;

    .line 34
    new-instance v11, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/VideoRecordingClickAction;

    invoke-direct {v11}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/VideoRecordingClickAction;-><init>()V

    .line 35
    new-instance v12, Lkotlin/Pair;

    invoke-direct {v12, v4, v11}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v12, v1, v2

    .line 36
    new-instance v11, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/BasicLongPressEndAction;

    invoke-direct {v11}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/BasicLongPressEndAction;-><init>()V

    .line 37
    new-instance v12, Lkotlin/Pair;

    invoke-direct {v12, v8, v11}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v12, v1, v3

    .line 38
    invoke-static {v1}, Lkotlin/collections/MapsKt___MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v1

    .line 39
    new-instance v8, Lkotlin/Pair;

    invoke-direct {v8, p2, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v8, v0, v7

    .line 40
    sget-object p2, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->TIMER:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    .line 41
    new-instance v1, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/TimerClickAction;

    invoke-direct {v1}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/TimerClickAction;-><init>()V

    .line 42
    new-instance v7, Lkotlin/Pair;

    invoke-direct {v7, v4, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 43
    invoke-static {v7}, Lkotlin/collections/MapsKt__MapsJVMKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v1

    .line 44
    new-instance v7, Lkotlin/Pair;

    invoke-direct {v7, p2, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, v0, v9

    .line 45
    sget-object p2, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->CINEMAGRAPH:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    new-array v1, v5, [Lkotlin/Pair;

    .line 46
    new-instance v5, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/BasicClickAction;

    invoke-direct {v5}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/BasicClickAction;-><init>()V

    .line 47
    new-instance v7, Lkotlin/Pair;

    invoke-direct {v7, v4, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, v1, v2

    .line 48
    new-instance v2, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/BasicLongPressStartAction;

    invoke-direct {v2}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/BasicLongPressStartAction;-><init>()V

    .line 49
    new-instance v4, Lkotlin/Pair;

    invoke-direct {v4, v6, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v1, v3

    .line 50
    invoke-static {v1}, Lkotlin/collections/MapsKt___MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v1

    .line 51
    new-instance v2, Lkotlin/Pair;

    invoke-direct {v2, p2, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v0, v10

    .line 52
    invoke-static {v0}, Lkotlin/collections/MapsKt___MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p2

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->actionMap:Ljava/util/Map;

    .line 53
    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 54
    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 56
    invoke-virtual {p1, p0}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;->setOnCancelPendingInputEventsListener(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$OnCancelPendingInputEventsListener;)V

    return-void
.end method


# virtual methods
.method public onCancelPendingInputEvents(Landroid/view/View;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->downEvent:Landroid/view/MotionEvent;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->actionMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->shutter:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;->getShutterState()Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction$EventType;->CANCEL:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction$EventType;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction;

    if-nez v2, :cond_2

    goto :goto_0

    .line 3
    :cond_2
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    iget-object v8, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->eventListener:Lcom/motorola/camera/EventListener;

    move-object v3, p1

    .line 4
    invoke-virtual/range {v2 .. v8}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction;->execute(Landroid/view/View;JJLcom/motorola/camera/EventListener;)V

    :goto_0
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->downEvent:Landroid/view/MotionEvent;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->downEvent:Landroid/view/MotionEvent;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_5

    .line 2
    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->longPress:Z

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->longPress:Z

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->am:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 6
    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->actionMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->shutter:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;->getShutterState()Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    sget-object v3, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction$EventType;->TOUCH_DOWN:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction$EventType;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction;

    if-nez v3, :cond_3

    goto :goto_1

    .line 7
    :cond_3
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v5

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v7

    iget-object v9, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->eventListener:Lcom/motorola/camera/EventListener;

    move-object v4, p1

    invoke-virtual/range {v3 .. v9}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction;->execute(Landroid/view/View;JJLcom/motorola/camera/EventListener;)V

    goto :goto_1

    :cond_4
    return-void

    .line 8
    :cond_5
    :goto_1
    iput-object v1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->downEvent:Landroid/view/MotionEvent;

    if-nez v0, :cond_6

    return-void

    .line 9
    :cond_6
    iget-wide v1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->longExposureStart:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->longExposureStart:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0xc8

    cmp-long v1, v1, v3

    if-lez v1, :cond_a

    .line 10
    :cond_7
    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->actionMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->shutter:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;->getShutterState()Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-nez v1, :cond_8

    goto :goto_2

    :cond_8
    sget-object v2, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction$EventType;->CLICK:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction$EventType;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction;

    if-nez v2, :cond_9

    goto :goto_2

    .line 11
    :cond_9
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    iget-object v8, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->eventListener:Lcom/motorola/camera/EventListener;

    move-object v3, p1

    .line 12
    invoke-virtual/range {v2 .. v8}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction;->execute(Landroid/view/View;JJLcom/motorola/camera/EventListener;)V

    .line 13
    :cond_a
    :goto_2
    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->actionMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->shutter:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;->getShutterState()Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-nez v1, :cond_b

    goto :goto_3

    :cond_b
    sget-object v2, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction$EventType;->TOUCH_UP:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction$EventType;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction;

    if-nez v2, :cond_c

    goto :goto_3

    .line 14
    :cond_c
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    iget-object v8, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->eventListener:Lcom/motorola/camera/EventListener;

    move-object v3, p1

    .line 15
    invoke-virtual/range {v2 .. v8}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction;->execute(Landroid/view/View;JJLcom/motorola/camera/EventListener;)V

    .line 16
    :goto_3
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->downEvent:Landroid/view/MotionEvent;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    :goto_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    const/4 v3, 0x1

    .line 2
    iput-boolean v3, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->longPress:Z

    .line 3
    iget-boolean v3, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->longClickable:Z

    if-eqz v3, :cond_4

    .line 4
    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->actionMap:Ljava/util/Map;

    iget-object v4, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->shutter:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;

    invoke-virtual {v4}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;->getShutterState()Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    sget-object v4, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction$EventType;->LONG_PRESS_START:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction$EventType;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction;

    if-nez v4, :cond_3

    goto :goto_1

    .line 5
    :cond_3
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v6

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    iget-object v10, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->eventListener:Lcom/motorola/camera/EventListener;

    move-object v5, p1

    invoke-virtual/range {v4 .. v10}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction;->execute(Landroid/view/View;JJLcom/motorola/camera/EventListener;)V

    .line 6
    :cond_4
    :goto_1
    iput-object v1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->downEvent:Landroid/view/MotionEvent;

    return v2
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction$EventType;->LONG_PRESS_END:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction$EventType;

    const/4 v1, 0x0

    if-nez p2, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-eqz v2, :cond_11

    const/4 v3, 0x1

    if-eq v2, v3, :cond_a

    const/4 v4, 0x2

    if-eq v2, v4, :cond_5

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    goto/16 :goto_6

    .line 3
    :cond_1
    iget-boolean v2, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->longPress:Z

    if-eqz v2, :cond_4

    .line 4
    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->actionMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->shutter:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;->getShutterState()Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    if-nez v2, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction;

    if-nez v2, :cond_3

    goto :goto_0

    .line 6
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    iget-object v8, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->eventListener:Lcom/motorola/camera/EventListener;

    move-object v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction;->execute(Landroid/view/View;JJLcom/motorola/camera/EventListener;)V

    :cond_4
    :goto_0
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->downEvent:Landroid/view/MotionEvent;

    goto/16 :goto_6

    .line 8
    :cond_5
    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->longPress:Z

    if-nez v0, :cond_9

    if-nez p1, :cond_6

    goto :goto_1

    .line 9
    :cond_6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    const/4 v2, 0x0

    cmpg-float v0, v0, v2

    if-ltz v0, :cond_8

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v0, v0, v4

    if-gtz v0, :cond_8

    .line 10
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    cmpg-float v0, v0, v2

    if-ltz v0, :cond_8

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    cmpl-float p1, p2, p1

    if-lez p1, :cond_7

    goto :goto_2

    :cond_7
    :goto_1
    move p1, v1

    goto :goto_3

    :cond_8
    :goto_2
    move p1, v3

    :goto_3
    if-eqz p1, :cond_9

    goto :goto_4

    :cond_9
    move v3, v1

    .line 11
    :goto_4
    iput-boolean v3, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->shouldTriggerShutterCancel:Z

    goto/16 :goto_6

    .line 12
    :cond_a
    iget-boolean v2, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->longPress:Z

    if-eqz v2, :cond_d

    .line 13
    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->actionMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->shutter:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;->getShutterState()Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    if-nez v2, :cond_b

    goto :goto_5

    .line 14
    :cond_b
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction;

    if-nez v2, :cond_c

    goto :goto_5

    .line 15
    :cond_c
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    iget-object v8, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->eventListener:Lcom/motorola/camera/EventListener;

    move-object v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction;->execute(Landroid/view/View;JJLcom/motorola/camera/EventListener;)V

    goto :goto_5

    .line 16
    :cond_d
    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->shouldTriggerShutterCancel:Z

    if-eqz v0, :cond_10

    .line 17
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->actionMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->shutter:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;->getShutterState()Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_e

    goto :goto_5

    .line 18
    :cond_e
    sget-object v2, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction$EventType;->CANCEL:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction$EventType;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction;

    if-nez v2, :cond_f

    goto :goto_5

    .line 19
    :cond_f
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    iget-object v8, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->eventListener:Lcom/motorola/camera/EventListener;

    move-object v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction;->execute(Landroid/view/View;JJLcom/motorola/camera/EventListener;)V

    .line 20
    :cond_10
    :goto_5
    iput-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->shouldTriggerShutterCancel:Z

    goto :goto_6

    .line 21
    :cond_11
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->downEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_12

    return v1

    .line 22
    :cond_12
    iput-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->longPress:Z

    .line 23
    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->downEvent:Landroid/view/MotionEvent;

    .line 24
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->actionMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->shutter:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;->getShutterState()Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_13

    goto :goto_6

    :cond_13
    sget-object v2, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction$EventType;->TOUCH_DOWN:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction$EventType;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction;

    if-nez v2, :cond_14

    goto :goto_6

    .line 25
    :cond_14
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    iget-object v8, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->eventListener:Lcom/motorola/camera/EventListener;

    move-object v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction;->execute(Landroid/view/View;JJLcom/motorola/camera/EventListener;)V

    :goto_6
    return v1
.end method
