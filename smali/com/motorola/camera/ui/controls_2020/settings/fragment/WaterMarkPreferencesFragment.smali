.class public final Lcom/motorola/camera/ui/controls_2020/settings/fragment/WaterMarkPreferencesFragment;
.super Lcom/motorola/camera/ui/controls_2020/settings/fragment/BasePreferencesFragment;
.source "WaterMarkPreferencesFragment.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWaterMarkPreferencesFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WaterMarkPreferencesFragment.kt\ncom/motorola/camera/ui/controls_2020/settings/fragment/WaterMarkPreferencesFragment\n+ 2 Strings.kt\nkotlin/text/StringsKt__StringsKt\n*L\n1#1,144:1\n107#2:145\n79#2,22:146\n*S KotlinDebug\n*F\n+ 1 WaterMarkPreferencesFragment.kt\ncom/motorola/camera/ui/controls_2020/settings/fragment/WaterMarkPreferencesFragment\n*L\n62#1:145\n62#1:146,22\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/motorola/camera/ui/controls_2020/settings/fragment/WaterMarkPreferencesFragment;",
        "Lcom/motorola/camera/ui/controls_2020/settings/fragment/BasePreferencesFragment;",
        "<init>",
        "()V",
        "MotCamera4-v9.0.12.67_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public watermarkCache:Lcom/motorola/camera/service/WatermarkEditorService$WatermarkCache;


# direct methods
.method public constructor <init>()V
    .locals 1

    const v0, 0x7f140006

    .line 1
    invoke-direct {p0, v0}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/BasePreferencesFragment;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final getStringSetsFromSizes(Ljava/util/List;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p0, Ljava/util/HashSet;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    .line 3
    invoke-virtual {v0}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-super {p0, p1, p2}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/BasePreferencesFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/BasePreferencesFragment;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    .line 3
    new-instance v3, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WaterMarkPreferencesFragment$onCreatePreferences$1;

    const/4 p1, 0x0

    invoke-direct {v3, p0, p1}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WaterMarkPreferencesFragment$onCreatePreferences$1;-><init>(Lcom/motorola/camera/ui/controls_2020/settings/fragment/WaterMarkPreferencesFragment;Lkotlin/coroutines/Continuation;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    .line 4
    new-instance p2, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WaterMarkPreferencesFragment$onCreatePreferences$2;

    invoke-direct {p2, p0}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WaterMarkPreferencesFragment$onCreatePreferences$2;-><init>(Lcom/motorola/camera/ui/controls_2020/settings/fragment/WaterMarkPreferencesFragment;)V

    check-cast p1, Lkotlinx/coroutines/JobSupport;

    const/4 p0, 0x0

    const/4 v0, 0x1

    .line 5
    invoke-virtual {p1, p0, v0, p2}, Lkotlinx/coroutines/JobSupport;->invokeOnCompletion(ZZLkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    return-void
.end method

.method public onDestroy()V
    .locals 11

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 2
    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/BasePreferencesFragment;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lkotlinx/coroutines/CoroutineScopeKt;->cancel$default(Lkotlinx/coroutines/CoroutineScope;Ljava/util/concurrent/CancellationException;I)V

    .line 3
    invoke-static {}, Lcom/motorola/camera/service/WatermarkEditorService;->getWatermarkPref()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_key_locale_language"

    .line 5
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 6
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 7
    invoke-static {}, Lcom/motorola/camera/service/WatermarkEditorService;->isTimestampChecked()Z

    move-result v1

    .line 8
    invoke-static {}, Lcom/motorola/camera/service/WatermarkEditorService;->isSignatureChecked()Z

    move-result v2

    .line 9
    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WaterMarkPreferencesFragment;->watermarkCache:Lcom/motorola/camera/service/WatermarkEditorService$WatermarkCache;

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v2, v3, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkCache;->mIsSignatureEnabled:Z

    :goto_0
    if-nez v3, :cond_1

    goto :goto_5

    .line 10
    :cond_1
    invoke-static {}, Lcom/motorola/camera/service/WatermarkEditorService;->getSignatureText()Ljava/lang/String;

    move-result-object v4

    const-string v5, "getSignatureText()"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v0

    const/4 v6, 0x0

    move v7, v6

    move v8, v7

    :goto_1
    if-gt v7, v5, :cond_7

    if-nez v8, :cond_2

    move v9, v7

    goto :goto_2

    :cond_2
    move v9, v5

    .line 12
    :goto_2
    invoke-virtual {v4, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x20

    .line 13
    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v9

    if-gtz v9, :cond_3

    move v9, v0

    goto :goto_3

    :cond_3
    move v9, v6

    :goto_3
    if-nez v8, :cond_5

    if-nez v9, :cond_4

    move v8, v0

    goto :goto_1

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_5
    if-nez v9, :cond_6

    goto :goto_4

    :cond_6
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    :cond_7
    :goto_4
    add-int/2addr v5, v0

    .line 14
    invoke-virtual {v4, v7, v5}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 16
    iput-object v0, v3, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkCache;->mSignatureText:Ljava/lang/String;

    :goto_5
    if-nez v2, :cond_8

    if-eqz v1, :cond_9

    .line 17
    :cond_8
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 18
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WaterMarkPreferencesFragment;->watermarkCache:Lcom/motorola/camera/service/WatermarkEditorService$WatermarkCache;

    .line 19
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/motorola/camera/service/WatermarkEditorService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.motorola.camera.service.action.CREATE"

    .line 20
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "com.motorola.camera.service.extra.CACHE"

    .line 22
    invoke-virtual {v2, v3, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p0, "com.motorola.camera.service.extra.BUNDLE"

    .line 23
    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 24
    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 25
    :cond_9
    sget-object p0, Lcom/motorola/camera/service/WatermarkGenerator$LazyLoader;->INSTANCE:Lcom/motorola/camera/service/WatermarkGenerator;

    .line 26
    iget-object v0, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mLeftSignTemplate:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/motorola/camera/service/WatermarkGenerator;->releaseBitmap(Landroid/graphics/Bitmap;)V

    .line 27
    iget-object v0, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mLogoBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/motorola/camera/service/WatermarkGenerator;->releaseBitmap(Landroid/graphics/Bitmap;)V

    .line 28
    iget-object v0, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mRightPreviewTemplate:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/motorola/camera/service/WatermarkGenerator;->releaseBitmap(Landroid/graphics/Bitmap;)V

    .line 29
    iget-object v0, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mLeftPreviewTemplate:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/motorola/camera/service/WatermarkGenerator;->releaseBitmap(Landroid/graphics/Bitmap;)V

    .line 30
    iget-object p0, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mTimestampTemplate:Landroid/graphics/Bitmap;

    invoke-static {p0}, Lcom/motorola/camera/service/WatermarkGenerator;->releaseBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type com.motorola.camera.ui.controls_2020.settings.activity.SettingsActivity"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;

    const v0, 0x7f11024a

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;->setHeaderTitle(I)V

    return-void
.end method
