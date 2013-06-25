.class Lcom/igexin/sdk/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lsdk/b/a/a/b/m;

.field final synthetic b:Lcom/igexin/sdk/SdkActivity;


# direct methods
.method constructor <init>(Lcom/igexin/sdk/SdkActivity;Lsdk/b/a/a/b/m;)V
    .locals 0

    iput-object p1, p0, Lcom/igexin/sdk/d;->b:Lcom/igexin/sdk/SdkActivity;

    iput-object p2, p0, Lcom/igexin/sdk/d;->a:Lsdk/b/a/a/b/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    iget-object v1, p0, Lcom/igexin/sdk/d;->b:Lcom/igexin/sdk/SdkActivity;

    iget-object v0, p0, Lcom/igexin/sdk/d;->b:Lcom/igexin/sdk/SdkActivity;

    invoke-static {v0}, Lcom/igexin/sdk/SdkActivity;->a(Lcom/igexin/sdk/SdkActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/igexin/sdk/d;->b:Lcom/igexin/sdk/SdkActivity;

    invoke-static {v0}, Lcom/igexin/sdk/SdkActivity;->b(Lcom/igexin/sdk/SdkActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/igexin/sdk/d;->a:Lsdk/b/a/a/b/m;

    invoke-virtual {v0}, Lsdk/b/a/a/b/m;->c()Ljava/util/List;

    move-result-object v0

    const/4 v4, 0x1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsdk/b/a/a/b/e;

    invoke-virtual {v0}, Lsdk/b/a/a/b/e;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v3, v0}, Lcom/igexin/sdk/SdkActivity;->a(Lcom/igexin/sdk/SdkActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/igexin/sdk/d;->b:Lcom/igexin/sdk/SdkActivity;

    invoke-virtual {v1, v0}, Lcom/igexin/sdk/SdkActivity;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/igexin/sdk/d;->b:Lcom/igexin/sdk/SdkActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/igexin/sdk/SdkActivity;->a(Lcom/igexin/sdk/SdkActivity;Z)Z

    iget-object v0, p0, Lcom/igexin/sdk/d;->b:Lcom/igexin/sdk/SdkActivity;

    invoke-virtual {v0}, Lcom/igexin/sdk/SdkActivity;->finish()V

    return-void
.end method
