.class public final Lcom/tencent/mm/sdk/a/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/sdk/a/h;


# instance fields
.field public a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "_wxwebpageobject_webpageUrl"

    iget-object v1, p0, Lcom/tencent/mm/sdk/a/i;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a()Z
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/sdk/a/i;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/sdk/a/i;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/sdk/a/i;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x2800

    if-le v0, v1, :cond_1

    :cond_0
    const-string v0, "MicroMsg.SDK.WXWebpageObject"

    const-string v1, "checkArgs fail, webpageUrl is invalid"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
