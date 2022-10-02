.class public final synthetic Lcom/motorola/camera/fsm/camera/states/ErrorState$ErrorAlwaysCodeRunnable$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic INSTANCE:Lcom/motorola/camera/fsm/camera/states/ErrorState$ErrorAlwaysCodeRunnable$$ExternalSyntheticLambda0;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/motorola/camera/fsm/camera/states/ErrorState$ErrorAlwaysCodeRunnable$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/motorola/camera/fsm/camera/states/ErrorState$ErrorAlwaysCodeRunnable$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/ErrorState$ErrorAlwaysCodeRunnable$$ExternalSyntheticLambda0;->INSTANCE:Lcom/motorola/camera/fsm/camera/states/ErrorState$ErrorAlwaysCodeRunnable$$ExternalSyntheticLambda0;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/motorola/camera/fsm/camera/states/runnables/WaitForMemoryRunnable;->handleStorageFull()V

    return-void
.end method
