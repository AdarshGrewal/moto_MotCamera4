.class public Lcom/motorola/camera/fragments/CurrentReportFragment;
.super Lcom/motorola/camera/fragments/ReportFragment;
.source "CurrentReportFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/motorola/camera/fragments/ReportFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getGroup()Ljava/lang/String;
    .locals 0

    const-string p0, "Current Drain"

    return-object p0
.end method

.method public retrieveCheckBoxStatus()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 2
    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getDebugReportPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/fragments/ReportFragment;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method
