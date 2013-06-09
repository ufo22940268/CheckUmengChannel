.class final Lcom/zhangdan/app/activities/mailimport/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/zhangdan/app/activities/mailimport/a;

.field private final synthetic b:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/mailimport/a;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/mailimport/b;->a:Lcom/zhangdan/app/activities/mailimport/a;

    iput-object p2, p0, Lcom/zhangdan/app/activities/mailimport/b;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/b;->a:Lcom/zhangdan/app/activities/mailimport/a;

    invoke-static {v0}, Lcom/zhangdan/app/activities/mailimport/a;->a(Lcom/zhangdan/app/activities/mailimport/a;)Lcom/zhangdan/app/activities/mailimport/BankHotLineActivity;

    move-result-object v1

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/b;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/b;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/zhangdan/app/h/d;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
