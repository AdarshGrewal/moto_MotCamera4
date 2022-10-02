.class public final synthetic Lcom/google/android/play/core/assetpacks/zzdx;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic zza:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/zabl;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/play/core/assetpacks/zzdx;->$r8$classId:I

    .line 1
    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/zzdx;->zza:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/play/core/assetpacks/zzbh;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/play/core/assetpacks/zzdx;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/zzdx;->zza:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget v0, p0, Lcom/google/android/play/core/assetpacks/zzdx;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 1
    :pswitch_0
    iget-object p0, p0, Lcom/google/android/play/core/assetpacks/zzdx;->zza:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/play/core/assetpacks/zzbh;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/play/core/assetpacks/zzbh;->zzO()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 3
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4
    invoke-static {v1}, Lcom/google/android/play/core/assetpacks/zzbh;->zzP(Ljava/io/File;)V

    const/4 v2, 0x0

    .line 5
    invoke-static {v1, v2}, Lcom/google/android/play/core/assetpacks/zzbh;->zzH(Ljava/io/File;Z)J

    move-result-wide v3

    iget-object v5, p0, Lcom/google/android/play/core/assetpacks/zzbh;->zze:Lcom/google/android/play/core/assetpacks/zzed;

    .line 6
    invoke-virtual {v5}, Lcom/google/android/play/core/assetpacks/zzed;->zza()I

    move-result v5

    int-to-long v5, v5

    cmp-long v5, v5, v3

    if-eqz v5, :cond_1

    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/io/File;

    .line 7
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v3, "stale.tmp"

    invoke-direct {v5, v6, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 8
    :try_start_0
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 9
    :catch_0
    sget-object v3, Lcom/google/android/play/core/assetpacks/zzbh;->zza:Lcom/google/android/play/core/appupdate/zzy;

    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "Could not write staleness marker."

    .line 10
    invoke-virtual {v3, v5, v4}, Lcom/google/android/play/core/appupdate/zzy;->zzb(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 11
    :cond_1
    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v3, v1

    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v4, v1, v2

    .line 12
    invoke-static {v4}, Lcom/google/android/play/core/assetpacks/zzbh;->zzP(Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void

    .line 13
    :goto_2
    iget-object p0, p0, Lcom/google/android/play/core/assetpacks/zzdx;->zza:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/common/api/internal/zabl;

    .line 14
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zabl;->zaB()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
