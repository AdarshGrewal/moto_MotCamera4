.class public Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;
.super Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$BaseTranslateObject;
.source "DebugReportDisplayStrings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TranslateObject"
.end annotation


# instance fields
.field public mTranslateCamera:Z

.field public mTranslateMode:Z

.field public final synthetic this$0:Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;->this$0:Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;

    .line 2
    invoke-direct {p0, p2, p3}, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$BaseTranslateObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iput-boolean p4, p0, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;->mTranslateCamera:Z

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;->mTranslateMode:Z

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;Ljava/lang/String;Ljava/lang/String;ZZZ)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;->this$0:Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;

    .line 6
    invoke-direct {p0, p2, p3}, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$BaseTranslateObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iput-boolean p4, p0, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;->mTranslateCamera:Z

    .line 8
    iput-boolean p6, p0, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;->mTranslateMode:Z

    return-void
.end method


# virtual methods
.method public getDisplayString(Ljava/lang/String;Landroid/database/Cursor;Z)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$BaseTranslateObject;->mMappedTag:Ljava/lang/String;

    const/4 p3, 0x0

    :try_start_0
    const-string v0, "coldstart"

    .line 2
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 3
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move p3, v1

    :catch_0
    :cond_0
    const-string v0, " - "

    if-eqz p3, :cond_1

    .line 5
    invoke-static {p1, v0}, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;->this$0:Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;

    .line 6
    iget-object v1, v1, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;->mColdStartStringMap:Ljava/util/HashMap;

    .line 7
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    const/4 p3, -0x1

    :try_start_1
    const-string v1, "mode"

    .line 8
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 9
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move v1, p3

    .line 10
    :goto_0
    iget-boolean v2, p0, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;->mTranslateMode:Z

    if-eqz v2, :cond_3

    if-eq v1, p3, :cond_2

    .line 11
    sget-object p3, Lcom/motorola/camera/settings/SettingsManager;->MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p3}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/motorola/camera/settings/Setting;->getString(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 12
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 13
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {v1, p3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :cond_2
    const-string p3, "Unknown"

    .line 14
    :goto_1
    invoke-static {p1, v0, p3}, Landroidx/core/graphics/PathParser$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_3
    :try_start_2
    const-string p3, "camera"

    .line 15
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p3

    .line 16
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    const-string p2, ""

    .line 17
    :goto_2
    iget-boolean p0, p0, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;->mTranslateCamera:Z

    if-eqz p0, :cond_4

    .line 18
    invoke-static {p1, v0, p2}, Landroidx/core/graphics/PathParser$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_4
    return-object p1
.end method
