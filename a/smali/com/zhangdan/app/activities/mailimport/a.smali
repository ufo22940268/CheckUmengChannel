.class final Lcom/zhangdan/app/activities/mailimport/a;
.super Landroid/widget/BaseAdapter;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/zhangdan/app/activities/mailimport/BankHotLineActivity;

.field private b:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/zhangdan/app/activities/mailimport/BankHotLineActivity;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/mailimport/a;->a:Lcom/zhangdan/app/activities/mailimport/BankHotLineActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lcom/zhangdan/app/activities/mailimport/a;->b:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/zhangdan/app/activities/mailimport/a;)Lcom/zhangdan/app/activities/mailimport/BankHotLineActivity;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/a;->a:Lcom/zhangdan/app/activities/mailimport/BankHotLineActivity;

    return-object v0
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/a;->b:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/a;->b:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/a;->a:Lcom/zhangdan/app/activities/mailimport/BankHotLineActivity;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/mailimport/BankHotLineActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030096

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    const v0, 0x7f060206

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0601a9

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/zhangdan/app/activities/mailimport/a;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zhangdan/app/data/model/a;

    if-nez v2, :cond_1

    :goto_0
    return-object p2

    :cond_1
    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/a;->g()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p0, p3}, Lcom/zhangdan/app/activities/mailimport/a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/a;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/a;->b()I

    move-result v0

    iget-object v2, p0, Lcom/zhangdan/app/activities/mailimport/a;->a:Lcom/zhangdan/app/activities/mailimport/BankHotLineActivity;

    invoke-virtual {v2}, Lcom/zhangdan/app/activities/mailimport/BankHotLineActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/zhangdan/app/data/db/b/b;->b(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/zhangdan/app/data/b;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    iget-object v3, p0, Lcom/zhangdan/app/activities/mailimport/a;->a:Lcom/zhangdan/app/activities/mailimport/BankHotLineActivity;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/b;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/zhangdan/app/h/d;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/a;->a:Lcom/zhangdan/app/activities/mailimport/BankHotLineActivity;

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v4, v0, [Ljava/lang/String;

    :goto_1
    array-length v0, v4

    if-lt v1, v0, :cond_2

    new-instance v0, Lcom/zhangdan/app/activities/mailimport/b;

    invoke-direct {v0, p0, v2}, Lcom/zhangdan/app/activities/mailimport/b;-><init>(Lcom/zhangdan/app/activities/mailimport/a;Ljava/util/List;)V

    invoke-virtual {v3, v4, v0}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    :cond_2
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/b;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/b;->c()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method
