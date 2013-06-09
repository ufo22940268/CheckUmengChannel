.class final Lcom/zhangdan/app/activities/sms/u;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/zhangdan/app/activities/sms/SmsEditActivity;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/sms/SmsEditActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/sms/u;->a:Lcom/zhangdan/app/activities/sms/SmsEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/u;->a:Lcom/zhangdan/app/activities/sms/SmsEditActivity;

    invoke-static {v0}, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->a(Lcom/zhangdan/app/activities/sms/SmsEditActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/u;->a:Lcom/zhangdan/app/activities/sms/SmsEditActivity;

    invoke-static {v0}, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->b(Lcom/zhangdan/app/activities/sms/SmsEditActivity;)Lcom/zhangdan/app/sms/a;

    move-result-object v0

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/sms/a;->g(I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/u;->a:Lcom/zhangdan/app/activities/sms/SmsEditActivity;

    invoke-static {v0}, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->c(Lcom/zhangdan/app/activities/sms/SmsEditActivity;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/u;->a:Lcom/zhangdan/app/activities/sms/SmsEditActivity;

    invoke-static {v0}, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->d(Lcom/zhangdan/app/activities/sms/SmsEditActivity;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
