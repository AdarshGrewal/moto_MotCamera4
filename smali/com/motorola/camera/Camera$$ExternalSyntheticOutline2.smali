.class public final synthetic Lcom/motorola/camera/Camera$$ExternalSyntheticOutline2;
.super Ljava/lang/Object;


# direct methods
.method public static m(Ljava/util/HashMap;Lcom/motorola/camera/CameraKpi$KPI;)V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
