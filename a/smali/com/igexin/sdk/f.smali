.class Lcom/igexin/sdk/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field final synthetic a:Lcom/igexin/sdk/SdkActivity;


# direct methods
.method constructor <init>(Lcom/igexin/sdk/SdkActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/igexin/sdk/f;->a:Lcom/igexin/sdk/SdkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 5

    const/4 v4, 0x1

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    return v4

    :pswitch_0
    iget-object v0, p0, Lcom/igexin/sdk/f;->a:Lcom/igexin/sdk/SdkActivity;

    invoke-static {v0}, Lcom/igexin/sdk/SdkActivity;->c(Lcom/igexin/sdk/SdkActivity;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lsdk/b/a/a/c/d;->H:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/igexin/sdk/f;->a:Lcom/igexin/sdk/SdkActivity;

    iget-object v1, p0, Lcom/igexin/sdk/f;->a:Lcom/igexin/sdk/SdkActivity;

    invoke-static {v1}, Lcom/igexin/sdk/SdkActivity;->a(Lcom/igexin/sdk/SdkActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/igexin/sdk/f;->a:Lcom/igexin/sdk/SdkActivity;

    invoke-static {v2}, Lcom/igexin/sdk/SdkActivity;->b(Lcom/igexin/sdk/SdkActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/igexin/sdk/f;->a:Lcom/igexin/sdk/SdkActivity;

    invoke-static {v3}, Lcom/igexin/sdk/SdkActivity;->c(Lcom/igexin/sdk/SdkActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/igexin/sdk/SdkActivity;->a(Lcom/igexin/sdk/SdkActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/igexin/sdk/f;->a:Lcom/igexin/sdk/SdkActivity;

    invoke-virtual {v1, v0}, Lcom/igexin/sdk/SdkActivity;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/igexin/sdk/f;->a:Lcom/igexin/sdk/SdkActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/igexin/sdk/SdkActivity;->a(Lcom/igexin/sdk/SdkActivity;Z)Z

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/igexin/sdk/f;->a:Lcom/igexin/sdk/SdkActivity;

    invoke-virtual {v0}, Lcom/igexin/sdk/SdkActivity;->finish()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
