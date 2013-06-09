.class public final Lcom/tencent/mm/sdk/a/d;
.super Lcom/tencent/mm/sdk/a/a;


# instance fields
.field public b:Lcom/tencent/mm/sdk/a/g;

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/mm/sdk/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/tencent/mm/sdk/a/a;->a(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/tencent/mm/sdk/a/d;->b:Lcom/tencent/mm/sdk/a/g;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "_wxobject_sdkVer"

    iget v3, v0, Lcom/tencent/mm/sdk/a/g;->a:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "_wxobject_title"

    iget-object v3, v0, Lcom/tencent/mm/sdk/a/g;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "_wxobject_description"

    iget-object v3, v0, Lcom/tencent/mm/sdk/a/g;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "_wxobject_thumbdata"

    iget-object v3, v0, Lcom/tencent/mm/sdk/a/g;->d:[B

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    iget-object v2, v0, Lcom/tencent/mm/sdk/a/g;->e:Lcom/tencent/mm/sdk/a/h;

    if-eqz v2, :cond_0

    const-string v2, "_wxobject_identifier_"

    iget-object v3, v0, Lcom/tencent/mm/sdk/a/g;->e:Lcom/tencent/mm/sdk/a/h;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/tencent/mm/sdk/a/g;->e:Lcom/tencent/mm/sdk/a/h;

    invoke-interface {v0, v1}, Lcom/tencent/mm/sdk/a/h;->a(Landroid/os/Bundle;)V

    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    const-string v0, "_wxapi_sendmessagetowx_req_scene"

    iget v1, p0, Lcom/tencent/mm/sdk/a/d;->c:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method final a()Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/tencent/mm/sdk/a/d;->b:Lcom/tencent/mm/sdk/a/g;

    if-nez v1, :cond_0

    const-string v1, "MicroMsg.SDK.SendMessageToWX.Req"

    const-string v2, "checkArgs fail ,message is null"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/tencent/mm/sdk/a/d;->b:Lcom/tencent/mm/sdk/a/g;

    iget-object v2, v1, Lcom/tencent/mm/sdk/a/g;->e:Lcom/tencent/mm/sdk/a/h;

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/tencent/mm/sdk/a/g;->e:Lcom/tencent/mm/sdk/a/h;

    :cond_1
    iget-object v2, v1, Lcom/tencent/mm/sdk/a/g;->d:[B

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/tencent/mm/sdk/a/g;->d:[B

    array-length v2, v2

    const v3, 0x8000

    if-le v2, v3, :cond_2

    const-string v1, "MicroMsg.SDK.WXMediaMessage"

    const-string v2, "checkArgs fail, thumbData is invalid"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v2, v1, Lcom/tencent/mm/sdk/a/g;->b:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, v1, Lcom/tencent/mm/sdk/a/g;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x200

    if-le v2, v3, :cond_3

    const-string v1, "MicroMsg.SDK.WXMediaMessage"

    const-string v2, "checkArgs fail, title is invalid"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v2, v1, Lcom/tencent/mm/sdk/a/g;->c:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, v1, Lcom/tencent/mm/sdk/a/g;->c:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x400

    if-le v2, v3, :cond_4

    const-string v1, "MicroMsg.SDK.WXMediaMessage"

    const-string v2, "checkArgs fail, description is invalid"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v2, v1, Lcom/tencent/mm/sdk/a/g;->e:Lcom/tencent/mm/sdk/a/h;

    if-nez v2, :cond_5

    const-string v1, "MicroMsg.SDK.WXMediaMessage"

    const-string v2, "checkArgs fail, mediaObject is null"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-object v0, v1, Lcom/tencent/mm/sdk/a/g;->e:Lcom/tencent/mm/sdk/a/h;

    invoke-interface {v0}, Lcom/tencent/mm/sdk/a/h;->a()Z

    move-result v0

    goto :goto_0
.end method
