.class public Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$3;
.super Ljava/lang/Object;
.source "TouchRoiComponent.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v1, :cond_12

    .line 1
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    .line 2
    iget-boolean v2, v2, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mTouchingBar:Z

    if-eqz v2, :cond_0

    goto/16 :goto_b

    .line 3
    :cond_0
    iget-object v2, v1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x0

    aget v4, v2, v3

    const/4 v5, 0x1

    .line 4
    aget v6, v2, v5

    const/4 v7, 0x2

    .line 5
    aget v2, v2, v7

    .line 6
    iget-object v8, v1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v8}, Landroid/hardware/Sensor;->getType()I

    move-result v8

    const/16 v11, 0xa

    if-ne v8, v11, :cond_d

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 8
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    .line 9
    iget-wide v9, v1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mLastT:J

    const-wide/16 v16, 0x0

    cmp-long v8, v9, v16

    if-eqz v8, :cond_c

    sub-long v8, v13, v9

    long-to-float v8, v8

    const/high16 v9, 0x42200000    # 40.0f

    cmpg-float v9, v8, v9

    if-gez v9, :cond_1

    return-void

    :cond_1
    mul-float/2addr v4, v8

    .line 10
    iget v9, v1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mVelX:F

    add-float/2addr v9, v4

    iput v9, v1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mVelX:F

    mul-float/2addr v6, v8

    .line 11
    iget v4, v1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mVelY:F

    add-float/2addr v4, v6

    iput v4, v1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mVelY:F

    mul-float/2addr v2, v8

    .line 12
    iget v4, v1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mVelZ:F

    add-float/2addr v4, v2

    iput v4, v1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mVelZ:F

    .line 13
    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mVelocityList:Ljava/util/List;

    .line 14
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, v11, :cond_5

    .line 15
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    .line 16
    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mVelocityList:Ljava/util/List;

    .line 17
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v4, v11, :cond_2

    goto/16 :goto_1

    .line 18
    :cond_2
    monitor-enter v1

    move v6, v3

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    :goto_0
    if-ge v6, v4, :cond_3

    .line 19
    :try_start_0
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v15, v23

    check-cast v15, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$SensorData;

    .line 20
    iget-wide v11, v15, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$SensorData;->mTime:J

    long-to-float v11, v11

    add-float/2addr v9, v11

    .line 21
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$SensorData;

    .line 22
    iget-object v11, v11, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$SensorData;->mVelocities:[F

    .line 23
    aget v11, v11, v3

    add-float v18, v18, v11

    .line 24
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$SensorData;

    .line 25
    iget-object v11, v11, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$SensorData;->mVelocities:[F

    .line 26
    aget v11, v11, v5

    add-float v20, v20, v11

    .line 27
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$SensorData;

    .line 28
    iget-object v11, v11, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$SensorData;->mVelocities:[F

    .line 29
    aget v11, v11, v7

    add-float v22, v22, v11

    float-to-double v11, v8

    .line 30
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$SensorData;

    .line 31
    iget-wide v7, v8, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$SensorData;->mTime:J

    long-to-double v7, v7

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 32
    invoke-static {v7, v8, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    add-double/2addr v11, v7

    double-to-float v8, v11

    .line 33
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$SensorData;

    .line 34
    iget-wide v2, v2, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$SensorData;->mTime:J

    long-to-float v2, v2

    .line 35
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$SensorData;

    .line 36
    iget-object v3, v3, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$SensorData;->mVelocities:[F

    const/4 v7, 0x0

    .line 37
    aget v3, v3, v7

    mul-float/2addr v2, v3

    add-float/2addr v10, v2

    .line 38
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$SensorData;

    .line 39
    iget-wide v2, v2, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$SensorData;->mTime:J

    long-to-float v2, v2

    .line 40
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$SensorData;

    .line 41
    iget-object v3, v3, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$SensorData;->mVelocities:[F

    .line 42
    aget v3, v3, v5

    mul-float/2addr v2, v3

    add-float v19, v2, v19

    .line 43
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$SensorData;

    .line 44
    iget-wide v2, v2, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$SensorData;->mTime:J

    long-to-float v2, v2

    .line 45
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$SensorData;

    .line 46
    iget-object v3, v3, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$SensorData;->mVelocities:[F

    const/4 v7, 0x2

    .line 47
    aget v3, v3, v7

    mul-float/2addr v2, v3

    add-float v21, v2, v21

    add-int/lit8 v6, v6, 0x1

    const/4 v3, 0x0

    const/4 v7, 0x2

    const/16 v11, 0xa

    goto/16 :goto_0

    .line 48
    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-float v1, v4

    mul-float/2addr v8, v1

    mul-float v2, v9, v9

    sub-float/2addr v8, v2

    const/4 v2, 0x0

    cmpl-float v3, v8, v2

    if-nez v3, :cond_4

    goto :goto_1

    :cond_4
    mul-float/2addr v10, v1

    mul-float v18, v18, v9

    sub-float v10, v10, v18

    div-float/2addr v10, v8

    mul-float v19, v19, v1

    mul-float v20, v20, v9

    sub-float v19, v19, v20

    div-float v19, v19, v8

    mul-float v1, v1, v21

    mul-float v9, v9, v22

    sub-float/2addr v1, v9

    div-float/2addr v1, v8

    const/4 v2, 0x3

    new-array v3, v2, [F

    const/4 v2, 0x0

    aput v10, v3, v2

    aput v19, v3, v5

    const/4 v2, 0x2

    aput v1, v3, v2

    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_5
    :goto_1
    const/4 v3, 0x0

    .line 49
    :goto_2
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    .line 50
    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mAccList:Ljava/util/List;

    .line 51
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0xa

    if-lt v1, v2, :cond_9

    move v4, v5

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v12, 0x0

    .line 52
    :goto_3
    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    .line 53
    iget-object v6, v6, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mAccList:Ljava/util/List;

    .line 54
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_6

    .line 55
    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    .line 56
    iget-object v6, v6, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mAccList:Ljava/util/List;

    .line 57
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [F

    const/4 v7, 0x0

    aget v6, v6, v7

    iget-object v8, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    .line 58
    iget-object v8, v8, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mAccList:Ljava/util/List;

    add-int/lit8 v9, v4, -0x1

    .line 59
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [F

    aget v8, v8, v7

    sub-float/2addr v6, v8

    add-float/2addr v12, v6

    .line 60
    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    .line 61
    iget-object v6, v6, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mAccList:Ljava/util/List;

    .line 62
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [F

    aget v6, v6, v5

    iget-object v7, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    .line 63
    iget-object v7, v7, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mAccList:Ljava/util/List;

    .line 64
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [F

    aget v7, v7, v5

    sub-float/2addr v6, v7

    add-float/2addr v1, v6

    .line 65
    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    .line 66
    iget-object v6, v6, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mAccList:Ljava/util/List;

    .line 67
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [F

    const/4 v7, 0x2

    aget v6, v6, v7

    iget-object v8, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    .line 68
    iget-object v8, v8, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mAccList:Ljava/util/List;

    .line 69
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [F

    aget v8, v8, v7

    sub-float/2addr v6, v8

    add-float/2addr v2, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 70
    :cond_6
    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    .line 71
    iget-object v6, v4, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mStartAcc:[F

    if-nez v6, :cond_7

    const/4 v6, 0x3

    new-array v7, v6, [F

    const/4 v6, 0x0

    aput v12, v7, v6

    aput v1, v7, v5

    const/4 v8, 0x2

    aput v2, v7, v8

    .line 72
    iput-object v7, v4, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mStartAcc:[F

    goto :goto_4

    :cond_7
    const/4 v6, 0x0

    .line 73
    :goto_4
    iget-object v7, v4, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mStartAcc:[F

    .line 74
    aget v7, v7, v6

    invoke-static {v4, v12, v7}, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->access$2000(Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;FF)Z

    move-result v4

    if-nez v4, :cond_8

    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    .line 75
    iget-object v6, v4, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mStartAcc:[F

    .line 76
    aget v6, v6, v5

    invoke-static {v4, v1, v6}, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->access$2000(Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;FF)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    .line 77
    iget-object v4, v1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mStartAcc:[F

    const/4 v6, 0x2

    .line 78
    aget v4, v4, v6

    invoke-static {v1, v2, v4}, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->access$2000(Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;FF)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_8
    move v7, v5

    goto :goto_5

    :cond_9
    const/4 v7, 0x0

    :goto_5
    if-eqz v3, :cond_a

    .line 79
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    .line 80
    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mAccList:Ljava/util/List;

    .line 81
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    :goto_6
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    .line 83
    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mAccList:Ljava/util/List;

    .line 84
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0xa

    if-le v1, v2, :cond_a

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    .line 85
    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mAccList:Ljava/util/List;

    const/4 v2, 0x0

    .line 86
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_6

    :cond_a
    const/4 v2, 0x0

    .line 87
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$SensorData;

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    .line 88
    iget-wide v8, v3, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mFirstT:J

    sub-long v8, v13, v8

    const/4 v4, 0x3

    new-array v4, v4, [F

    .line 89
    iget v6, v3, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mVelX:F

    aput v6, v4, v2

    .line 90
    iget v2, v3, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mVelY:F

    aput v2, v4, v5

    .line 91
    iget v2, v3, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mVelZ:F

    const/4 v3, 0x2

    aput v2, v4, v3

    .line 92
    invoke-direct {v1, v8, v9, v4}, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$SensorData;-><init>(J[F)V

    .line 93
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    .line 94
    iget-object v2, v2, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mVelocityList:Ljava/util/List;

    .line 95
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    :goto_7
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    .line 97
    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mVelocityList:Ljava/util/List;

    .line 98
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0xa

    if-le v1, v2, :cond_b

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    .line 99
    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mVelocityList:Ljava/util/List;

    const/4 v3, 0x0

    .line 100
    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_7

    :cond_b
    move v5, v7

    goto :goto_8

    :cond_c
    const/4 v5, 0x0

    .line 101
    :goto_8
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    .line 102
    iput-wide v13, v1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mLastT:J

    .line 103
    iget-wide v2, v1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mFirstT:J

    cmp-long v2, v2, v16

    if-nez v2, :cond_10

    .line 104
    iput-wide v13, v1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mFirstT:J

    goto/16 :goto_a

    .line 105
    :cond_d
    iget-object v3, v1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    const/4 v7, 0x4

    if-ne v3, v7, :cond_f

    .line 106
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    .line 107
    iget v7, v3, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mGyroTimestamp:F

    const/4 v8, 0x0

    cmpl-float v9, v7, v8

    if-eqz v9, :cond_e

    .line 108
    iget-wide v8, v1, Landroid/hardware/SensorEvent;->timestamp:J

    long-to-float v8, v8

    sub-float/2addr v8, v7

    const v7, 0x3089705f    # 1.0E-9f

    mul-float/2addr v8, v7

    mul-float v7, v4, v8

    .line 109
    iget v9, v3, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mAngleX:F

    add-float/2addr v9, v7

    iput v9, v3, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mAngleX:F

    mul-float v7, v6, v8

    .line 110
    iget v10, v3, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mAngleY:F

    add-float/2addr v10, v7

    iput v10, v3, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mAngleY:F

    mul-float/2addr v8, v2

    .line 111
    iget v7, v3, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mAngleZ:F

    add-float/2addr v7, v8

    iput v7, v3, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mAngleZ:F

    float-to-double v7, v9

    .line 112
    invoke-static {v7, v8}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    double-to-float v12, v7

    .line 113
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    .line 114
    iget v3, v3, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mAngleY:F

    float-to-double v7, v3

    .line 115
    invoke-static {v7, v8}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    double-to-float v3, v7

    .line 116
    iget-object v7, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    .line 117
    iget v7, v7, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mAngleZ:F

    float-to-double v7, v7

    .line 118
    invoke-static {v7, v8}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    double-to-float v7, v7

    goto :goto_9

    :cond_e
    move v3, v8

    move v7, v3

    move v12, v7

    .line 119
    :goto_9
    iget-object v8, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    iget-wide v9, v1, Landroid/hardware/SensorEvent;->timestamp:J

    long-to-float v1, v9

    .line 120
    iput v1, v8, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mGyroTimestamp:F

    float-to-double v8, v4

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    .line 121
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    float-to-double v13, v6

    invoke-static {v13, v14, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v13

    add-double/2addr v13, v8

    float-to-double v1, v2

    invoke-static {v1, v2, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    add-double/2addr v1, v13

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    float-to-double v8, v12

    .line 122
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    float-to-double v2, v3

    invoke-static {v2, v3, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v2, v8

    float-to-double v6, v7

    .line 123
    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v6, v2

    .line 124
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    const v3, 0x3fe66666    # 1.8f

    cmpl-float v1, v1, v3

    if-gtz v1, :cond_10

    const/high16 v1, 0x41c80000    # 25.0f

    cmpl-float v1, v2, v1

    if-lez v1, :cond_f

    goto :goto_a

    :cond_f
    const/4 v5, 0x0

    :cond_10
    :goto_a
    if-eqz v5, :cond_12

    .line 125
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->registerSensor(Z)V

    .line 126
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    .line 127
    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mRoiTex:Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;

    .line 128
    iget-boolean v2, v2, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mRoiActive:Z

    if-eqz v2, :cond_11

    .line 129
    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->dispatchReset()V

    .line 130
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    .line 131
    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mRoiTex:Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;

    .line 132
    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->applyCenterRoiAnimation()V

    .line 133
    :cond_11
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    .line 134
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->resetSensorValues()V

    :cond_12
    :goto_b
    return-void
.end method
