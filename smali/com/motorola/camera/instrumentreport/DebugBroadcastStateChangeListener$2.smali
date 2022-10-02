.class public final Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener$2;
.super Lkotlin/jvm/internal/Lambda;
.source "DebugBroadcastStateChangeListener.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;-><init>(Lcom/motorola/camera/fsm/camera/CameraFsm;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener$2;->this$0:Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener$2;->this$0:Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;

    check-cast p0, Lcom/motorola/camera/instrumentreport/MeasureKpi;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 3
    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getDebugReportPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 4
    const-class v1, Lcom/motorola/camera/fragments/KpiReportFragment;

    const/4 v1, 0x0

    const-string v2, "KpiReportFragment"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/camera/instrumentreport/MeasureKpi;->mStopKpi:Z

    .line 5
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
