.class public Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;
.super Ljava/lang/Object;
.source "CalibrationData.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/instrumentreport/CalibrationData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UpdateDBRunnable"
.end annotation


# instance fields
.field public final mMetaData:Lcom/motorola/camera/photometadata/PhotoMetadata;

.field public final synthetic this$0:Lcom/motorola/camera/instrumentreport/CalibrationData;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/instrumentreport/CalibrationData;Lcom/motorola/camera/photometadata/PhotoMetadata;Lcom/motorola/camera/instrumentreport/CalibrationData$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->this$0:Lcom/motorola/camera/instrumentreport/CalibrationData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->mMetaData:Lcom/motorola/camera/photometadata/PhotoMetadata;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->this$0:Lcom/motorola/camera/instrumentreport/CalibrationData;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3
    :try_start_0
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->groupDBquery(Ljava/lang/Boolean;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    :try_start_1
    sget-boolean v3, Lcom/motorola/camera/instrumentreport/CalibrationData;->mBuildUpdated:Z

    if-eqz v3, :cond_0

    .line 5
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v3}, Lcom/motorola/camera/instrumentreport/CalibrationData;->groupDBquery(Ljava/lang/Boolean;)Landroid/database/Cursor;

    goto :goto_1

    :cond_0
    if-eqz v2, :cond_3

    .line 6
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_3

    .line 7
    invoke-interface {v2, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 8
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "CalibrationBackCam"

    .line 9
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 10
    sget-boolean v6, Lcom/motorola/camera/instrumentreport/CalibrationData;->mFrontCamUsed:Z

    if-nez v6, :cond_1

    .line 11
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_1
    const-string v6, "CalibrationFrontCam"

    .line 12
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 13
    sget-boolean v5, Lcom/motorola/camera/instrumentreport/CalibrationData;->mFrontCamUsed:Z

    if-eqz v5, :cond_2

    .line 14
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    :goto_1
    invoke-static {v2}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_3

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v1, v2

    goto/16 :goto_d

    :catch_0
    move-exception v3

    goto :goto_2

    :catchall_1
    move-exception p0

    goto/16 :goto_d

    :catch_1
    move-exception v3

    move-object v2, v1

    :goto_2
    :try_start_2
    const-string v4, "CalibrationData"

    .line 16
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception;"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 17
    :cond_3
    invoke-static {v2}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 18
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 19
    :goto_3
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 20
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 21
    sget-boolean v3, Lcom/motorola/camera/instrumentreport/CalibrationData;->mFrontCamUsed:Z

    if-eqz v3, :cond_4

    const-string v3, "CalibrationFrontCam"

    goto :goto_4

    :cond_4
    const-string v3, "CalibrationBackCam"

    :goto_4
    const/4 v10, 0x1

    new-array v4, v10, [Ljava/lang/String;

    aput-object v3, v4, v0

    const-string v0, "RAW_SQL"

    const-string v5, "select keytag from events WHERE keytype = ? "

    .line 22
    invoke-virtual {v2, v0, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SELECTION_ARGS"

    .line 23
    invoke-virtual {v2, v0, v4}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 24
    sget-boolean v0, Lcom/motorola/camera/instrumentreport/CalibrationData;->mOneTimeCalibrationNotUpdated:Z

    if-eqz v0, :cond_b

    .line 25
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 26
    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getDebugReportPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 27
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 28
    sget-boolean v5, Lcom/motorola/camera/instrumentreport/CalibrationData;->mOneTimeCalibrationUpdatedBack:Z

    const-string v5, "CALIBRATION_BUILD_STRING"

    sget-object v6, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 29
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_5
    const-string v0, "WHERE_CLAUSE"

    const-string v5, "keytype = ?"

    .line 30
    invoke-virtual {v2, v0, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "WHERE_ARGS"

    .line 31
    invoke-virtual {v2, v0, v4}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 32
    invoke-static {}, Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;->getInstance()Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;->deleteData(Landroid/os/Bundle;)I

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 34
    iget-object v2, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->mMetaData:Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v4, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAL_SENSOR_NAME:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v4}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v8

    const-string v7, "SENSOR_NAME"

    const/4 v2, 0x1

    const/4 v9, 0x1

    move-object v4, v8

    move-object v5, v0

    move-object v6, v3

    .line 35
    invoke-static/range {v4 .. v9}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$500(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 36
    iget-object v4, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->this$0:Lcom/motorola/camera/instrumentreport/CalibrationData;

    iget-object v5, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->mMetaData:Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v6, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAL_MNF_STATUS:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v5, v6}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$600(Lcom/motorola/camera/instrumentreport/CalibrationData;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v7, "MNF Calibration Status"

    move-object v4, v8

    move-object v5, v0

    move-object v6, v3

    .line 37
    invoke-static/range {v4 .. v9}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$500(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 38
    iget-object v4, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->this$0:Lcom/motorola/camera/instrumentreport/CalibrationData;

    iget-object v5, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->mMetaData:Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v6, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAL_AWB_STATUS:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v5, v6}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$600(Lcom/motorola/camera/instrumentreport/CalibrationData;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v7, "AWB Calibration Status"

    move-object v4, v8

    move-object v5, v0

    move-object v6, v3

    .line 39
    invoke-static/range {v4 .. v9}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$500(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 40
    iget-object v4, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->this$0:Lcom/motorola/camera/instrumentreport/CalibrationData;

    iget-object v5, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->mMetaData:Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v6, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAL_AF_STATUS:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v5, v6}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$600(Lcom/motorola/camera/instrumentreport/CalibrationData;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v7, "AF Calibration Status"

    move-object v4, v8

    move-object v5, v0

    move-object v6, v3

    .line 41
    invoke-static/range {v4 .. v9}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$500(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 42
    iget-object v4, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->this$0:Lcom/motorola/camera/instrumentreport/CalibrationData;

    iget-object v5, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->mMetaData:Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v6, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAL_LS_STATUS:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v5, v6}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$600(Lcom/motorola/camera/instrumentreport/CalibrationData;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v7, "LS Calibration Status"

    move-object v4, v8

    move-object v5, v0

    move-object v6, v3

    .line 43
    invoke-static/range {v4 .. v9}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$500(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 44
    iget-object v4, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->this$0:Lcom/motorola/camera/instrumentreport/CalibrationData;

    iget-object v5, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->mMetaData:Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v6, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAL_PDAF_STATUS:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v5, v6}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$600(Lcom/motorola/camera/instrumentreport/CalibrationData;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v7, "PDAF Calibration Status"

    move-object v4, v8

    move-object v5, v0

    move-object v6, v3

    .line 45
    invoke-static/range {v4 .. v9}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$500(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 46
    iget-object v4, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->this$0:Lcom/motorola/camera/instrumentreport/CalibrationData;

    iget-object v5, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->mMetaData:Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v6, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAL_DUAL_STATUS:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v5, v6}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$600(Lcom/motorola/camera/instrumentreport/CalibrationData;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v7, "DUAL Calibration Status"

    move-object v4, v8

    move-object v5, v0

    move-object v6, v3

    .line 47
    invoke-static/range {v4 .. v9}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$500(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 48
    iget-object v4, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->mMetaData:Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v5, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAL_VERSION:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v4, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v8

    const-string v7, "CAL_VERSION"

    move-object v4, v8

    move-object v5, v0

    .line 49
    invoke-static/range {v4 .. v9}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$500(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 50
    iget-object v4, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->mMetaData:Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v5, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_OTP_MANUFACTURE_ID:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v4, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v8

    const-string v7, "MANUFACTURE_ID"

    move-object v4, v8

    move-object v5, v0

    .line 51
    invoke-static/range {v4 .. v9}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$500(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 52
    iget-object v4, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->mMetaData:Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v5, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_OTP_MANUFACTURE_DATE:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v4, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v8

    const-string v7, "MANUFACTURE_DATE"

    move-object v4, v8

    move-object v5, v0

    .line 53
    invoke-static/range {v4 .. v9}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$500(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 54
    iget-object v4, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->mMetaData:Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v5, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_OTP_MANUFACTURE_LINE:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v4, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v8

    const-string v7, "MANUFACTURE_LINE"

    move-object v4, v8

    move-object v5, v0

    .line 55
    invoke-static/range {v4 .. v9}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$500(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 56
    iget-object v4, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->mMetaData:Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v5, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_OTP_SENSOR_SERIAL_NUM:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v4, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v8

    const-string v7, "SENSOR_SERIAL_NUM"

    move-object v4, v8

    move-object v5, v0

    .line 57
    invoke-static/range {v4 .. v9}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$500(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 58
    iget-object v4, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->mMetaData:Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v5, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_OTP_MOT_PART_NUM:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v4, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v8

    const-string v7, "MOT_PART_NUM"

    move-object v4, v8

    move-object v5, v0

    .line 59
    invoke-static/range {v4 .. v9}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$500(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 60
    iget-object v4, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->mMetaData:Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v5, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_OTP_LENS_ID:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v4, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v8

    const-string v7, "LENS_ID"

    move-object v4, v8

    move-object v5, v0

    .line 61
    invoke-static/range {v4 .. v9}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$500(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 62
    iget-object v4, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->mMetaData:Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v5, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_OTP_FACTORY_ID:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v4, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v8

    const-string v7, "FACTORY_ID"

    move-object v4, v8

    move-object v5, v0

    .line 63
    invoke-static/range {v4 .. v9}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$500(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 64
    iget-object v4, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->mMetaData:Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v5, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_OTP_IR_FILTER:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v4, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v8

    const-string v7, "IR_FILTER"

    move-object v4, v8

    move-object v5, v0

    .line 65
    invoke-static/range {v4 .. v9}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$500(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 66
    iget-object v4, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->mMetaData:Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v5, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAL_CIE_LIL_X_SOURCE_1:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v4, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v8

    const-string v7, "CIE_LIL_X_SOURCE_1"

    move-object v4, v8

    move-object v5, v0

    .line 67
    invoke-static/range {v4 .. v9}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$500(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 68
    iget-object v4, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->mMetaData:Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v5, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAL_CIE_LIL_Y_SOURCE_1:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v4, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v8

    const-string v7, "CIE_LIL_Y_SOURCE_1"

    move-object v4, v8

    move-object v5, v0

    .line 69
    invoke-static/range {v4 .. v9}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$500(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 70
    iget-object v4, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->mMetaData:Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v5, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAL_CIE_BIG_Y_SOURCE_1:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v4, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v8

    const-string v7, "CIE_BIG_Y_SOURCE_1"

    move-object v4, v8

    move-object v5, v0

    .line 71
    invoke-static/range {v4 .. v9}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$500(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 72
    iget-object v4, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->mMetaData:Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v5, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAL_AWB_SOURCE_1_R:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v4, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v8

    const-string v7, "AWB_SOURCE_1_R"

    move-object v4, v8

    move-object v5, v0

    .line 73
    invoke-static/range {v4 .. v9}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$500(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 74
    iget-object v4, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->mMetaData:Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v5, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAL_AWB_SOURCE_1_Gr:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v4, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v8

    const-string v7, "AWB_SOURCE_1_Gr"

    move-object v4, v8

    move-object v5, v0

    .line 75
    invoke-static/range {v4 .. v9}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$500(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 76
    iget-object v4, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->mMetaData:Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v5, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAL_AWB_SOURCE_1_Gb:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v4, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v8

    const-string v7, "AWB_SOURCE_1_Gb"

    move-object v4, v8

    move-object v5, v0

    .line 77
    invoke-static/range {v4 .. v9}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$500(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 78
    iget-object v4, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->mMetaData:Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v5, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAL_AWB_SOURCE_1_B:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v4, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v8

    const-string v7, "AWB_SOURCE_1_B"

    move-object v4, v8

    move-object v5, v0

    .line 79
    invoke-static/range {v4 .. v9}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$500(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 80
    iget-object v4, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->mMetaData:Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v5, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAL_AWB_SOURCE_1_GOLDEN_R:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v4, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v8

    const-string v7, "AWB_SOURCE_1_GOLDEN_R"

    move-object v4, v8

    move-object v5, v0

    .line 81
    invoke-static/range {v4 .. v9}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$500(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 82
    iget-object v4, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->mMetaData:Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v5, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAL_AWB_SOURCE_1_GOLDEN_Gr:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v4, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v8

    const-string v7, "AWB_SOURCE_1_GOLDEN_Gr"

    move-object v4, v8

    move-object v5, v0

    .line 83
    invoke-static/range {v4 .. v9}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$500(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 84
    iget-object v4, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->mMetaData:Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v5, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAL_AWB_SOURCE_1_GOLDEN_Gb:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v4, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v8

    const-string v7, "AWB_SOURCE_1_GOLDEN_Gb"

    move-object v4, v8

    move-object v5, v0

    .line 85
    invoke-static/range {v4 .. v9}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$500(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 86
    iget-object v4, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->mMetaData:Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v5, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAL_AWB_SOURCE_1_GOLDEN_B:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v4, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v8

    const-string v7, "AWB_SOURCE_1_GOLDEN_B"

    move-object v4, v8

    move-object v5, v0

    .line 87
    invoke-static/range {v4 .. v9}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$500(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 88
    iget-object v4, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->mMetaData:Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v5, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAL_BLACK_LEVEL_R:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v4, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v8

    const-string v7, "BLACK_LEVEL_R"

    move-object v4, v8

    move-object v5, v0

    .line 89
    invoke-static/range {v4 .. v9}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$500(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 90
    iget-object v4, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->mMetaData:Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v5, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAL_BLACK_LEVEL_Gr:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v4, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v8

    const-string v7, "BLACK_LEVEL_Gr"

    move-object v4, v8

    move-object v5, v0

    .line 91
    invoke-static/range {v4 .. v9}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$500(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 92
    iget-object v4, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->mMetaData:Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v5, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAL_BLACK_LEVEL_Gb:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v4, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v8

    const-string v7, "BLACK_LEVEL_Gb"

    move-object v4, v8

    move-object v5, v0

    .line 93
    invoke-static/range {v4 .. v9}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$500(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 94
    iget-object v4, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->mMetaData:Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v5, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAL_BLACK_LEVEL_B:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v4, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v8

    const-string v7, "BLACK_LEVEL_B"

    move-object v4, v8

    move-object v5, v0

    .line 95
    invoke-static/range {v4 .. v9}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$500(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 96
    iget-object v4, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->mMetaData:Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v5, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAL_AWB_SOURCE_1_RG:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v4, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v8

    const-string v7, "AWB_SOURCE_1_RG"

    move-object v4, v8

    move-object v5, v0

    .line 97
    invoke-static/range {v4 .. v9}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$500(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 98
    iget-object v4, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->mMetaData:Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v5, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAL_AWB_SOURCE_1_BG:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v4, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v8

    const-string v7, "AWB_SOURCE_1_BG"

    move-object v4, v8

    move-object v5, v0

    .line 99
    invoke-static/range {v4 .. v9}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$500(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 100
    iget-object v4, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->mMetaData:Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v5, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAL_AWB_SOURCE_1_GRGB:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v4, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v8

    const-string v7, "AWB_SOURCE_1_GRGB"

    move-object v4, v8

    move-object v5, v0

    .line 101
    invoke-static/range {v4 .. v9}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$500(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 102
    iget-object v4, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->mMetaData:Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v5, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_ACTUATOR_CAL_VER:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v4, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v8

    const-string v7, "AF_CAL_VER"

    move-object v4, v8

    move-object v5, v0

    .line 103
    invoke-static/range {v4 .. v9}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$500(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 104
    iget-object v4, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->mMetaData:Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v5, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_ACTUATOR_HW_REV:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v4, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v8

    const-string v7, "AF_HW_REV"

    move-object v4, v8

    move-object v5, v0

    .line 105
    invoke-static/range {v4 .. v9}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$500(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 106
    iget-object v4, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->mMetaData:Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v5, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_ACTUATOR_INF_DAC:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v4, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v8

    const-string v7, "AF_INF_DAC"

    move-object v4, v8

    move-object v5, v0

    .line 107
    invoke-static/range {v4 .. v9}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$500(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 108
    iget-object v4, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->mMetaData:Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v5, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_ACTUATOR_MACRO_DAC:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v4, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v8

    const-string v7, "AF_MACRO_DAC"

    move-object v4, v8

    move-object v5, v0

    .line 109
    invoke-static/range {v4 .. v9}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$500(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 110
    iget-object v4, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->mMetaData:Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v5, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_ACTUATOR_INF_DAC_ORG:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v4, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v8

    const-string v7, "AF_INF_DAC_ORG"

    move-object v4, v8

    move-object v5, v0

    .line 111
    invoke-static/range {v4 .. v9}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$500(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 112
    iget-object v4, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->mMetaData:Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v5, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_ACTUATOR_MACRO_DAC_ORG:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v4, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v8

    const-string v7, "AF_MACRO_DAC_ORG"

    move-object v4, v8

    move-object v5, v0

    .line 113
    invoke-static/range {v4 .. v9}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$500(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 114
    iget-object v4, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->mMetaData:Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v5, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_ACTUATOR_ACTUATOR_ID:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v4, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v8

    const-string v7, "AF_ACTUATOR_ID"

    move-object v4, v8

    move-object v5, v0

    move v9, v2

    .line 115
    invoke-static/range {v4 .. v9}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$500(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 116
    iget-object v2, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->this$0:Lcom/motorola/camera/instrumentreport/CalibrationData;

    iget-object v4, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->mMetaData:Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v5, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAL_CALSTATUS:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v4, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v4

    .line 117
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v4, :cond_6

    move-object v8, v1

    goto :goto_6

    .line 118
    :cond_6
    :try_start_3
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 119
    sget-object v4, Lcom/motorola/camera/instrumentreport/CalibrationData;->mCalibrationStatusMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_5

    :catch_2
    const-string v2, "Parse Error"

    :goto_5
    move-object v8, v2

    :goto_6
    const-string v7, "CALSTATUS"

    const/4 v2, 0x1

    const/4 v9, 0x1

    move-object v4, v8

    move-object v5, v0

    move-object v6, v3

    .line 120
    invoke-static/range {v4 .. v9}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$500(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 121
    iget-object v4, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->this$0:Lcom/motorola/camera/instrumentreport/CalibrationData;

    iget-object v5, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->mMetaData:Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v6, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAL_COLOR_ENABLED:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v5, v6}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$800(Lcom/motorola/camera/instrumentreport/CalibrationData;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v7, "COLOR_ENABLED"

    move-object v4, v8

    move-object v5, v0

    move-object v6, v3

    .line 122
    invoke-static/range {v4 .. v9}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$500(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 123
    iget-object v4, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->this$0:Lcom/motorola/camera/instrumentreport/CalibrationData;

    iget-object v5, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->mMetaData:Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v6, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAL_ROLLOFF_ENABLED:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v5, v6}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$800(Lcom/motorola/camera/instrumentreport/CalibrationData;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v7, "ROLLOFF_ENABLED"

    move-object v4, v8

    move-object v5, v0

    move-object v6, v3

    .line 124
    invoke-static/range {v4 .. v9}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$500(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 125
    iget-object v4, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->this$0:Lcom/motorola/camera/instrumentreport/CalibrationData;

    iget-object v5, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->mMetaData:Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v6, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_AF_CAL_INFO_VALID:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v5, v6}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$800(Lcom/motorola/camera/instrumentreport/CalibrationData;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v7, "AF_CAL_INFO_VALID"

    move-object v4, v8

    move-object v5, v0

    move-object v6, v3

    .line 126
    invoke-static/range {v4 .. v9}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$500(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 127
    iget-object v4, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->mMetaData:Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v5, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAL_CHECK_CIE_OTP:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v4, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v8

    const-string v7, "CHECK_CIE_OTP"

    move-object v4, v8

    move-object v5, v0

    .line 128
    invoke-static/range {v4 .. v9}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$500(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 129
    iget-object v4, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->mMetaData:Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v5, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAL_CHECK_AWB_OTP:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v4, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v8

    const-string v7, "CHECK_AWB_OTP"

    move-object v4, v8

    move-object v5, v0

    .line 130
    invoke-static/range {v4 .. v9}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$500(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 131
    iget-object v4, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->mMetaData:Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v5, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_BOKEH_BLUR_INTENSITY:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v4, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v8

    const-string v7, "BLUR_INTENSITY"

    move-object v4, v8

    move-object v5, v0

    .line 132
    invoke-static/range {v4 .. v9}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$500(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 133
    iget-object v4, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->mMetaData:Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v5, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_BOKEH_ROI_LEFT:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v4, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v8

    const-string v7, "ROI_LEFT"

    move-object v4, v8

    move-object v5, v0

    .line 134
    invoke-static/range {v4 .. v9}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$500(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 135
    iget-object v4, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->mMetaData:Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v5, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_BOKEH_ROI_TOP:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v4, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v8

    const-string v7, "ROI_TOP"

    move-object v4, v8

    move-object v5, v0

    .line 136
    invoke-static/range {v4 .. v9}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$500(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 137
    iget-object v4, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->mMetaData:Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v5, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_BOKEH_ROI_WIDTH:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v4, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v8

    const-string v7, "ROI_WIDTH"

    move-object v4, v8

    move-object v5, v0

    .line 138
    invoke-static/range {v4 .. v9}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$500(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 139
    iget-object v4, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->mMetaData:Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v5, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_BOKEH_ROI_HEIGHT:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v4, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v8

    const-string v7, "ROI_HEIGHT"

    move-object v4, v8

    move-object v5, v0

    .line 140
    invoke-static/range {v4 .. v9}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$500(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 141
    iget-object v4, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->mMetaData:Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v5, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_HDRPLUS_LIB_VERSION:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v4, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v8

    const-string v7, "HDRPLUS_LIB_VERSION"

    move-object v4, v8

    move-object v5, v0

    .line 142
    invoke-static/range {v4 .. v9}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$500(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 143
    iget-object v4, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->mMetaData:Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v5, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_HDRPLUS_DATASET_VERSION:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v4, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v8

    const-string v7, "HDRPLUS_DATASET_VERSION"

    move-object v4, v8

    move-object v5, v0

    .line 144
    invoke-static/range {v4 .. v9}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$500(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 145
    iget-object v4, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->mMetaData:Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v5, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_HDRPLUS_SCENE_KPI:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v4, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v8

    const-string v7, "HDRPLUS_SCENE_KPI"

    move-object v4, v8

    move-object v5, v0

    .line 146
    invoke-static/range {v4 .. v9}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$500(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 147
    iget-object v4, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->mMetaData:Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v5, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_HDRPLUS_SNAPSHOT_KPI:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v4, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v8

    const-string v7, "HDRPLUS_SNAPSHOT_KPI"

    move-object v4, v8

    move-object v5, v0

    .line 148
    invoke-static/range {v4 .. v9}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$500(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 149
    iget-object v4, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->mMetaData:Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v5, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_HDRPLUS_EXPOSURE_COMPENSATION:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    .line 150
    invoke-virtual {v4, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v8

    const-string v7, "LABEL_HDRPLUS_EXPOSURE_COMPENSATION"

    move-object v4, v8

    move-object v5, v0

    .line 151
    invoke-static/range {v4 .. v9}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$500(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 152
    iget-object v4, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->mMetaData:Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v5, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_HDRPLUS_TARGET_BRIGHTNESS:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v4, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v8

    const-string v7, "LABEL_HDRPLUS_TARGET_BRIGHTNESS"

    move-object v4, v8

    move-object v5, v0

    .line 153
    invoke-static/range {v4 .. v9}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$500(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 154
    iget-object v4, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->mMetaData:Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v5, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_HDRPLUS_CURRENT_BRIGHTNESS:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v4, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v8

    const-string v7, "LABEL_HDRPLUS_CURRENT_BRIGHTNESS"

    move-object v4, v8

    move-object v5, v0

    .line 155
    invoke-static/range {v4 .. v9}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$500(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 156
    iget-object v4, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->mMetaData:Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v5, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_HDRPLUS_BLACK_LEVEL:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v4, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v8

    const-string v7, "HDRPLUS_BLACK_LEVEL"

    move-object v4, v8

    move-object v5, v0

    .line 157
    invoke-static/range {v4 .. v9}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$500(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 158
    iget-object v4, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->mMetaData:Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v5, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_HDRPLUS_WHITE_LEVEL:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v4, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v8

    const-string v7, "HDRPLUS_WHITE_LEVEL"

    move-object v4, v8

    move-object v5, v0

    .line 159
    invoke-static/range {v4 .. v9}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$500(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 160
    iget-object v4, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->mMetaData:Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v5, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_HDRPLUS_WHITE_BALANCE:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v4, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v8

    const-string v7, "HDRPLUS_WHITE_BALANCE"

    move-object v4, v8

    move-object v5, v0

    .line 161
    invoke-static/range {v4 .. v9}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$500(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 162
    iget-object v4, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->mMetaData:Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v5, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_HDRPLUS_CCM:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v4, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v8

    const-string v7, "HDRPLUS_CCM"

    move-object v4, v8

    move-object v5, v0

    .line 163
    invoke-static/range {v4 .. v9}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$500(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 164
    iget-object v4, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->mMetaData:Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v5, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_HDRPLUS_LENS_SHADING:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v4, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v8

    const-string v7, "HDRPLUS_LENS_SHADING"

    move-object v4, v8

    move-object v5, v0

    .line 165
    invoke-static/range {v4 .. v9}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$500(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 166
    iget-object v4, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->mMetaData:Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v5, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_HDRPLUS_DESCRIPTOR:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v4, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v8

    const-string v7, "LABEL_HDRPLUS_DESCRIPTOR"

    move-object v4, v8

    move-object v5, v0

    .line 167
    invoke-static/range {v4 .. v9}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$500(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 168
    iget-object v4, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->mMetaData:Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v5, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_HDRPLUS_ZOOM:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v4, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v8

    const-string v7, "LABEL_HDRPLUS_ZOOM"

    move-object v4, v8

    move-object v5, v0

    .line 169
    invoke-static/range {v4 .. v9}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$500(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 170
    iget-object v4, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->mMetaData:Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v5, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_HDRPLUS_FACES:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v4, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v8

    const-string v7, "LABEL_HDRPLUS_FACES"

    move-object v4, v8

    move-object v5, v0

    .line 171
    invoke-static/range {v4 .. v9}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$500(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 172
    iget-object p0, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->mMetaData:Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v4, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_HDRPLUS_AE_REGION:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {p0, v4}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v8

    const-string v7, "LABEL_HDRPLUS_AE_REGION"

    move-object v4, v8

    move v9, v2

    .line 173
    invoke-static/range {v4 .. v9}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$500(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 174
    invoke-static {}, Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;->getInstance()Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;

    move-result-object p0

    .line 175
    monitor-enter p0

    .line 176
    :try_start_4
    iget-object v2, p0, Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-nez v2, :cond_8

    .line 177
    :cond_7
    :try_start_5
    iget-object v2, p0, Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;->mInstrumentReportDBHelper:Lcom/motorola/camera/instrumentreport/InstrumentReportDBHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;->mDB:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 178
    :cond_8
    :try_start_6
    iget-object v2, p0, Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 179
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 180
    iget-object v3, p0, Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "events"

    invoke-virtual {v3, v4, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_7

    .line 181
    :cond_9
    iget-object v0, p0, Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 182
    :goto_8
    :try_start_7
    iget-object v0, p0, Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;->mDB:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_9

    :catchall_2
    move-exception v0

    goto :goto_a

    :catch_3
    move-exception v0

    :try_start_8
    const-string v1, "InstrumentReportDBAccessor"

    .line 183
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception getting DB connection:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_8

    .line 184
    :goto_9
    :try_start_9
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 185
    monitor-exit p0

    goto :goto_b

    .line 186
    :goto_a
    :try_start_a
    iget-object v1, p0, Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 187
    throw v0

    :catch_4
    move-exception v0

    const-string v1, "InstrumentReportDBAccessor"

    .line 188
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception getting DB connection:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 189
    monitor-exit p0

    .line 190
    :goto_b
    sget-boolean p0, Lcom/motorola/camera/instrumentreport/CalibrationData;->mFrontCamUsed:Z

    if-eqz p0, :cond_a

    .line 191
    sput-boolean v10, Lcom/motorola/camera/instrumentreport/CalibrationData;->mOneTimeCalibrationUpdatedFront:Z

    goto :goto_c

    .line 192
    :cond_a
    sput-boolean v10, Lcom/motorola/camera/instrumentreport/CalibrationData;->mOneTimeCalibrationUpdatedBack:Z

    goto :goto_c

    :catchall_3
    move-exception v0

    .line 193
    monitor-exit p0

    throw v0

    :cond_b
    :goto_c
    return-void

    .line 194
    :goto_d
    invoke-static {v1}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 195
    throw p0
.end method
