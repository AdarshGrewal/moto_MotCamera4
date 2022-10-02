.class public final synthetic Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension$$ExternalSyntheticOutline0;
.super Ljava/lang/Object;


# direct methods
.method public static m(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/String;ILcom/motorola/camera/camerax_extensions/JsonUtils;Lorg/json/JSONObject;Landroid/hardware/camera2/CaptureRequest$Key;)V
    .locals 0

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p3, p4, p5, p0}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonRequest(Lorg/json/JSONObject;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method
