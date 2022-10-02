.class public Lcom/motorola/camera/mcfmanagers/McfMlSettingManager$ShowMlResults$1;
.super Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine$McfMlStateAdapter;
.source "McfMlSettingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/mcfmanagers/McfMlSettingManager$ShowMlResults;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/motorola/camera/mcfmanagers/McfMlSettingManager$ShowMlResults;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/mcfmanagers/McfMlSettingManager$ShowMlResults;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager$ShowMlResults$1;->this$1:Lcom/motorola/camera/mcfmanagers/McfMlSettingManager$ShowMlResults;

    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine$McfMlStateAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final createToastMsg(Ljava/lang/StringBuilder;Lcom/motorola/camera/mcf/McfCallbackModelResults;Ljava/lang/String;D)Z
    .locals 4

    .line 1
    iget-object p0, p2, Lcom/motorola/camera/mcf/McfCallbackModelResults;->mResults:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    new-instance p2, Ljava/text/DecimalFormat;

    const-string p3, "#0.00"

    invoke-direct {p2, p3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p3, 0x0

    move v0, p3

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/mcf/McfModelResult;

    .line 5
    iget-object v2, v1, Lcom/motorola/camera/mcf/McfModelResult;->mScore:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v2, v2

    cmpl-double v2, v2, p4

    if-ltz v2, :cond_0

    if-eqz p3, :cond_1

    if-eqz v0, :cond_1

    .line 6
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    :cond_1
    iget-object p3, v1, Lcom/motorola/camera/mcf/McfModelResult;->mLabel:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p3, 0x3a

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/motorola/camera/mcf/McfModelResult;->mScore:Ljava/lang/Float;

    .line 8
    invoke-virtual {p2, v2}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    iget-object v2, v1, Lcom/motorola/camera/mcf/McfModelResult;->mBoundingBoxValid:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 10
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p3, v1, Lcom/motorola/camera/mcf/McfModelResult;->mBoundingBox:Landroid/graphics/Rect;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v0, v0, 0x1

    const/4 p3, 0x1

    goto :goto_0

    :cond_3
    return p3
.end method

.method public declared-synchronized onModelResults(Lcom/motorola/camera/mcf/McfCallbackModelResults;)V
    .locals 9

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p1, Lcom/motorola/camera/mcf/McfCallbackModelResults;->mStatus:I

    if-nez v0, :cond_2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    sget-object v1, Lcom/motorola/camera/settings/SettingsHelper;->TRUE_BYTE:Ljava/lang/Byte;

    .line 4
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MCF_ML_MODEL_SCENE_DETECTION_DEBUG:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 5
    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 6
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v7, 0x0

    if-eqz v1, :cond_0

    .line 7
    iget-object v1, p1, Lcom/motorola/camera/mcf/McfCallbackModelResults;->mModel:Lcom/motorola/camera/shared/ai/model/McfMlModel;

    sget-object v2, Lcom/motorola/camera/shared/ai/model/McfMlModel;->SCENE_DETECTION:Lcom/motorola/camera/shared/ai/model/McfMlModel;

    if-ne v1, v2, :cond_0

    const-string v4, "Motorola Scene Detection"

    const-wide/16 v5, 0x0

    move-object v1, p0

    move-object v2, v0

    move-object v3, p1

    .line 8
    invoke-virtual/range {v1 .. v6}, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager$ShowMlResults$1;->createToastMsg(Ljava/lang/StringBuilder;Lcom/motorola/camera/mcf/McfCallbackModelResults;Ljava/lang/String;D)Z

    move-result v1

    or-int/2addr v1, v7

    move v8, v1

    goto :goto_0

    :cond_0
    move v8, v7

    .line 9
    :goto_0
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MCF_ML_MODEL_GESTURE_DEBUG:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 10
    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 11
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 12
    iget-object v1, p1, Lcom/motorola/camera/mcf/McfCallbackModelResults;->mModel:Lcom/motorola/camera/shared/ai/model/McfMlModel;

    sget-object v2, Lcom/motorola/camera/shared/ai/model/McfMlModel;->GESTURE_MV1:Lcom/motorola/camera/shared/ai/model/McfMlModel;

    if-ne v1, v2, :cond_1

    const-string v4, "Motorola Gesture Detection"

    const-wide/16 v5, 0x0

    move-object v1, p0

    move-object v2, v0

    move-object v3, p1

    .line 13
    invoke-virtual/range {v1 .. v6}, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager$ShowMlResults$1;->createToastMsg(Ljava/lang/StringBuilder;Lcom/motorola/camera/mcf/McfCallbackModelResults;Ljava/lang/String;D)Z

    move-result p1

    or-int/2addr v8, p1

    :cond_1
    if-eqz v8, :cond_2

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, -0x100

    const/16 v1, 0xc8

    invoke-virtual {p0, p1, v0, v7, v1}, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager$ShowMlResults$1;->showToast(Ljava/lang/String;III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onModelStarted(Lcom/motorola/camera/shared/ai/model/McfMlModel;I)V
    .locals 0

    return-void
.end method

.method public final showToast(Ljava/lang/String;III)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager$ShowMlResults$1;->this$1:Lcom/motorola/camera/mcfmanagers/McfMlSettingManager$ShowMlResults;

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager$ShowMlResults;->mToastMl:Landroid/widget/Toast;

    .line 3
    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager$ShowMlResults$1;->this$1:Lcom/motorola/camera/mcfmanagers/McfMlSettingManager$ShowMlResults;

    .line 5
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const/4 v2, 0x1

    .line 6
    invoke-static {v1, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 7
    iput-object p1, v0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager$ShowMlResults;->mToastMl:Landroid/widget/Toast;

    .line 8
    iget-object p1, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager$ShowMlResults$1;->this$1:Lcom/motorola/camera/mcfmanagers/McfMlSettingManager$ShowMlResults;

    .line 9
    iget-object p1, p1, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager$ShowMlResults;->mToastMl:Landroid/widget/Toast;

    const/16 v0, 0x30

    .line 10
    invoke-virtual {p1, v0, p3, p4}, Landroid/widget/Toast;->setGravity(III)V

    .line 11
    iget-object p1, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager$ShowMlResults$1;->this$1:Lcom/motorola/camera/mcfmanagers/McfMlSettingManager$ShowMlResults;

    .line 12
    iget-object p1, p1, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager$ShowMlResults;->mToastMl:Landroid/widget/Toast;

    .line 13
    invoke-virtual {p1}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 14
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 15
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/16 p2, 0x55

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 16
    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager$ShowMlResults$1;->this$1:Lcom/motorola/camera/mcfmanagers/McfMlSettingManager$ShowMlResults;

    .line 17
    iget-object p0, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager$ShowMlResults;->mToastMl:Landroid/widget/Toast;

    .line 18
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method
