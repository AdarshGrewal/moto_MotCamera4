.class public final Lcom/google/android/play/core/appupdate/zzq;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.2"


# static fields
.field public static final zzb:Lcom/google/android/play/core/appupdate/zzy;

.field public static final zzc:Landroid/content/Intent;


# instance fields
.field public zza:Lcom/google/android/play/core/internal/zzas;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/zzas<",
            "Lcom/google/android/play/core/internal/zzp;",
            ">;"
        }
    .end annotation
.end field

.field public final zzd:Ljava/lang/String;

.field public final zze:Landroid/content/Context;

.field public final zzf:Lcom/google/android/play/core/appupdate/zzs;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/play/core/appupdate/zzy;

    const-string v1, "AppUpdateService"

    invoke-direct {v0, v1}, Lcom/google/android/play/core/appupdate/zzy;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/play/core/appupdate/zzq;->zzb:Lcom/google/android/play/core/appupdate/zzy;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.play.core.install.BIND_UPDATE_SERVICE"

    .line 2
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.vending"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/google/android/play/core/appupdate/zzq;->zzc:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/play/core/appupdate/zzs;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/play/core/appupdate/zzq;->zzd:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/play/core/appupdate/zzq;->zze:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/play/core/appupdate/zzq;->zzf:Lcom/google/android/play/core/appupdate/zzs;

    .line 2
    invoke-static {p1}, Lcom/google/android/play/core/internal/zzch;->zzb(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 3
    new-instance p2, Lcom/google/android/play/core/internal/zzas;

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    move-object v1, p1

    .line 5
    :goto_0
    sget-object v2, Lcom/google/android/play/core/appupdate/zzq;->zzb:Lcom/google/android/play/core/appupdate/zzy;

    sget-object v4, Lcom/google/android/play/core/appupdate/zzq;->zzc:Landroid/content/Intent;

    sget-object v5, Lcom/google/android/play/core/appupdate/zzk;->zza:Lcom/google/android/play/core/appupdate/zzk;

    const/4 v6, 0x0

    const-string v3, "AppUpdateService"

    move-object v0, p2

    .line 6
    invoke-direct/range {v0 .. v6}, Lcom/google/android/play/core/internal/zzas;-><init>(Landroid/content/Context;Lcom/google/android/play/core/appupdate/zzy;Ljava/lang/String;Landroid/content/Intent;Lcom/google/android/play/core/internal/zzan;Lcom/google/android/play/core/internal/zzam;)V

    iput-object p2, p0, Lcom/google/android/play/core/appupdate/zzq;->zza:Lcom/google/android/play/core/internal/zzas;

    :cond_1
    return-void
.end method

.method public static bridge synthetic zzb(Lcom/google/android/play/core/appupdate/zzq;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/play/core/appupdate/zzq;->zzi()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    const-string v1, "package.name"

    .line 3
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/play/core/appupdate/zzq;->zze:Landroid/content/Context;

    .line 4
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/google/android/play/core/appupdate/zzq;->zze:Landroid/content/Context;

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 6
    invoke-virtual {p0, v1, p1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 7
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 8
    :catch_0
    sget-object p0, Lcom/google/android/play/core/appupdate/zzq;->zzb:Lcom/google/android/play/core/appupdate/zzy;

    new-array p1, p1, [Ljava/lang/Object;

    const-string v1, "The current version of the app could not be retrieved"

    .line 9
    invoke-virtual {p0, v1, p1}, Lcom/google/android/play/core/appupdate/zzy;->zzb(Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_0

    .line 10
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const-string p1, "app.version.code"

    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    return-object v0
.end method

.method public static zzi()Landroid/os/Bundle;
    .locals 9

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "app_update"

    .line 2
    sget-object v2, Lcom/google/android/play/core/common/PlayCoreVersion;->zzc:Ljava/util/Map;

    .line 3
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 4
    const-class v3, Lcom/google/android/play/core/common/PlayCoreVersion;

    monitor-enter v3

    .line 5
    :try_start_0
    sget-object v4, Lcom/google/android/play/core/common/PlayCoreVersion;->zzc:Ljava/util/Map;

    move-object v5, v4

    check-cast v5, Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    const/16 v6, 0x2afa

    if-nez v5, :cond_0

    new-instance v5, Ljava/util/HashMap;

    .line 6
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v7, "java"

    .line 7
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    move-object v7, v4

    check-cast v7, Ljava/util/HashMap;

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    :cond_0
    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    const-string v3, "playcore_version_code"

    const-string v4, "java"

    .line 10
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 11
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "native"

    .line 12
    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "playcore_native_version"

    const-string v4, "native"

    .line 13
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 14
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    const-string/jumbo v3, "unity"

    .line 15
    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "playcore_unity_version"

    const-string/jumbo v4, "unity"

    .line 16
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 17
    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 18
    :cond_2
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    const-string v1, "playcore.version.code"

    .line 19
    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    :catchall_0
    move-exception v0

    .line 20
    monitor-exit v3

    throw v0
.end method

.method public static zzj()Lcom/google/android/play/core/tasks/zzm;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/android/play/core/tasks/zzm;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/play/core/appupdate/zzq;->zzb:Lcom/google/android/play/core/appupdate/zzy;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/16 v2, -0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    const-string v3, "onError(%d)"

    invoke-virtual {v0, v3, v1}, Lcom/google/android/play/core/appupdate/zzy;->zzb(Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v0, Lcom/google/android/play/core/install/InstallException;

    .line 2
    invoke-direct {v0, v2, v4}, Lcom/google/android/play/core/install/InstallException;-><init>(II)V

    .line 3
    new-instance v1, Lcom/google/android/play/core/tasks/zzm;

    invoke-direct {v1}, Lcom/google/android/play/core/tasks/zzm;-><init>()V

    .line 4
    invoke-virtual {v1, v0}, Lcom/google/android/play/core/tasks/zzm;->zza(Ljava/lang/Exception;)V

    return-object v1
.end method
