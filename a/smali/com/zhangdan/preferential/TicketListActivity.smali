.class public Lcom/zhangdan/preferential/TicketListActivity;
.super Lcom/zhangdan/preferential/BaseActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private a:Landroid/widget/ListView;

.field private b:Landroid/widget/TextView;

.field private c:Lcom/zhangdan/preferential/bs;

.field private d:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/zhangdan/preferential/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/zhangdan/preferential/TicketListActivity;)Lcom/zhangdan/preferential/bs;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/TicketListActivity;->c:Lcom/zhangdan/preferential/bs;

    return-object v0
.end method

.method static synthetic a(Lcom/zhangdan/preferential/TicketListActivity;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/preferential/TicketListActivity;->d:Ljava/util/List;

    return-void
.end method

.method static synthetic b(Lcom/zhangdan/preferential/TicketListActivity;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/TicketListActivity;->d:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/zhangdan/preferential/TicketListActivity;->finish()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f060037
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/zhangdan/preferential/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030104

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/TicketListActivity;->setContentView(I)V

    const v0, 0x7f06017f

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/TicketListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/zhangdan/preferential/TicketListActivity;->a:Landroid/widget/ListView;

    const v0, 0x7f0602e9

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/TicketListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zhangdan/preferential/TicketListActivity;->b:Landroid/widget/TextView;

    const v0, 0x7f060037

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/TicketListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/zhangdan/preferential/bs;

    invoke-direct {v0, p0}, Lcom/zhangdan/preferential/bs;-><init>(Lcom/zhangdan/preferential/TicketListActivity;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/TicketListActivity;->c:Lcom/zhangdan/preferential/bs;

    iget-object v0, p0, Lcom/zhangdan/preferential/TicketListActivity;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/zhangdan/preferential/TicketListActivity;->c:Lcom/zhangdan/preferential/bs;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/zhangdan/preferential/TicketListActivity;->a:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/zhangdan/preferential/TicketListActivity;->b:Landroid/widget/TextView;

    const v1, 0x7f0801da

    invoke-virtual {p0, v1}, Lcom/zhangdan/preferential/TicketListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/zhangdan/preferential/TicketListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "shop_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/zhangdan/preferential/br;

    invoke-direct {v1, p0, v3}, Lcom/zhangdan/preferential/br;-><init>(Lcom/zhangdan/preferential/TicketListActivity;B)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/zhangdan/preferential/br;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3

    iget-object v0, p0, Lcom/zhangdan/preferential/TicketListActivity;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string v0, "com.zhangdan.preferential.MIX_ACTION_VEW_SINGLE_TICKET"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "url"

    iget-object v0, p0, Lcom/zhangdan/preferential/TicketListActivity;->d:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/preferential/data/model/n;

    iget-object v0, v0, Lcom/zhangdan/preferential/data/model/n;->e:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/zhangdan/preferential/TicketListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method
