.class final Lcom/zhangdan/app/activities/mailimport/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/zhangdan/app/activities/mailimport/MailParseActivity;

.field private final synthetic b:Lcom/zhangdan/app/widget/a;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/mailimport/MailParseActivity;Lcom/zhangdan/app/widget/a;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/mailimport/k;->a:Lcom/zhangdan/app/activities/mailimport/MailParseActivity;

    iput-object p2, p0, Lcom/zhangdan/app/activities/mailimport/k;->b:Lcom/zhangdan/app/widget/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/k;->a:Lcom/zhangdan/app/activities/mailimport/MailParseActivity;

    const-string v1, "yuan_import_parse_dialog_yes"

    invoke-static {v0, v1}, Lcom/umeng/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/k;->b:Lcom/zhangdan/app/widget/a;

    invoke-virtual {v0}, Lcom/zhangdan/app/widget/a;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/k;->a:Lcom/zhangdan/app/activities/mailimport/MailParseActivity;

    invoke-static {v0}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->f(Lcom/zhangdan/app/activities/mailimport/MailParseActivity;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
