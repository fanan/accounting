# coding: utf-8

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


#一、资产类
#　　1 1001 库存现金
#　　2 1002 银行存款
#　　3 1003 存放中央银行款项（银行专用）
#　　4 1011 存放同业（银行专用）
#　　5 1015 其他货币资金
#　　6 1021 结算备付金（证券专用）
#　　7 1031 存出保证金（金融共用）
#　　8 1051 拆出资金（金融共用）
#　　9 1101 交易性金融资产
#　　10 1111 买入返售金融资产（金融共用）
#　　11 1121 应收票据
#　　12 1122 应收账款
#　　13 1123 预付账款
#　　16 1211 应收保户储金（保险专用）
#　　17 1221 应收代位追偿款（保险专用）
#　　18 1222 应收分保账款（保险专用）
#　　19 1223 应收分保未到期责任准备金（保险专用）
#　　20 1224 应收分保保险责任准备金（保险专用）
#　　21 1231 其他应收款
#　　22 1241坏账准备
#　　23 1251 贴现资产（银行专用）
#　　24 1301 贷款（银行和保险共用）
#　　25 1302 贷款损失准备（银行和保险共用）
#　　26 1311 代理兑付证券（银行和保险共用）
#　　27 1321 代理业务资产
#　　28 1401 材料采购
#　　29 1402 在途物资
#　　30 1403 原材料
#　　31 1404 材料成本差异
#　　32 1406 库存商品
#　　33 1407 发出商品
#　　34 1410 商品进销差价
#　　35 1411 委托加工物资
#　　36 1412 包装物及低值易耗品
#　　37 1421 消耗性生物资产（农业专用）
#　　38 1431 周转材料（建造承包商专用 ）
#　　39 1441 贵金属（银行专用）
#　　40 1442 抵债资产（金融共用）
#　　41 1451 损余物资（保险专用）
#　　42 1461 存货跌价准备
#　　43 1511 独立账户资产（保险专用）
#　　44 1521 持有至到期投资
#　　45 1522 持有至到期投资减值准备
#　　46 1523 可供出售金融资产
#　　47 1524 长期股权投资
#　　48 1525 长期股权投资减值准备
#　　49 1526 投资性房地产
#　　50 1531 长期应收款
#　　51 1541 未实现金融收益
#　　52 1551 存出资本保证金（保险专用）
#　　53 1601 固定资产
#　　54 1602 累计折旧
#　　55 1603 固定资产减值准备
#　　56 1604 在建工程
#　　57 1605 工程物资
#　　58 1606 固定资产清理
#　　59 1611 融资租赁资产（租赁专用）
#　　60 1612 未担保余值（租赁专用）
#　　61 1621 生产性生物资产（农业专用）
#　　62 1622 生产性生物资产累计折旧（农业专用）
#　　63 1623 公益性生物资产（农业专用）
#　　64 1631 油气资产（石油天然气开采专用）
#　　65 1632 累计折耗（石油天然气开采专用）
#　　66 1701 无形资产
#　　67 1702 累计摊销
#　　68 1703 无形资产减值准备
#　　69 1711 商誉
#　　70 1801 长期待摊费用
#　　71 1811 递延所得税资产
#　　72 1901 待处理财产损益
#二、负债类
#　　73 2001 短期借款
#　　74 2002 存入保证金（金融共用）
#　　75 2003 拆入资金（金融共用）
#　　76 2004 向中央银行借款（银行专用）
#　　77 2011 同业存放（银行专用）
#　　78 2012 吸收存款（银行专用）
#　　79 2021 贴现负债（银行专用）
#　　80 2101 交易性金融负债
#　　81 2111 卖出回购金融资产款（金融共用）
#　　82 2201 应付票据
#　　83 2202 应付账款
#　　84 2205 预收账款
#　　85 2211 应付职工薪酬
#　　86 2221 应交税费
#　　87 2231 应付股利
#　　88 2232 应付利息
#　　89 2241 其他应付款
#　　90 2251 应付保户红利（保险专用）
#　　91 2261 应付分保账款（保险专用）
#　　92 2311 代理买卖证券款（证券专用）
#　　93 2312 代理承销证券款（证券和银行共用）
#　　94 2313 代理兑付证券款（证券和银行共用）
#　　95 2314 代理业务负债
#　　96 2401 预提费用
#　　97 2411 预计负债
#　　98 2501 递延收益
#　　99 2601 长期借款
#　　100 2602 长期债券
#　　101 2701 未到期责任准备金（保险专用）
#　　102 2702 保险责任准备金（保险专用）
#　　103 2711 保户储金（保险专用）
#　　104 2721 独立账户负债（保险专用）
#　　105 2801 长期应付款
#　　106 2802 未确认融资费用
#　　107 2811 专项应付款
#　　108 2901 递延所得税负债
#三、共同类
#　　109 3001 清算资金往来（银行专用）
#　　110 3002 外汇买卖（金融共用）
#　　111 3101 衍生工具
#　　112 3201 套期工具
#　　113 3202 被套期项目
#四、所有者权益类
#　　114 4001 实收资本
#　　115 4002 资本公积
#　　116 4101 盈余公积
#　　117 4102 一般风险准备（金融共用）
#　　118 4103 本年利润
#　　119 4104 利润分配
#　　120 4201 库存股
#五、成本类
#　　121 5001 生产成本
#　　122 5101 制造费用
#　　123 5201 劳务成本
#　　124 5301 研发支出
#　　125 5401 工程施工（建造承包商专用）
#　　126 5402 工程结算（建造承包商专用）
#　　127 5403 机械作业（建造承包商专用）
#六、损益类
#　　128 6001 主营业务收入
#　　129 6011 利息收入（金融共用）
#　　130 6021 手续费收入（金融共用）
#　　131 6031 保费收入（保险专用）
#　　132 6032 分保费收入（保险专用）
#　　133 6041 租赁收入（租赁专用）
#　　134 6051 其他业务收入
#　　135 6061 汇兑损益（金融专用）
#　　136 6101 公允价值变动损益
#　　137 6111 投资收益
#　　138 6201 摊回保险责任准备金（保险专用）
#　　139 6202 摊回赔付支出（保险专用）
#　　140 6203 摊回分保费用（保险专用）
#　　141 6301 营业外收入
#　　142 6401 主营业务成本
#　　143 6402 其他业务成本
#　　144 6405 营业税金及附加
#　　145 6411 利息支出（金融共用）
#　　146 6421 手续费支出（金融共用）
#　　147 6501 提取未到期责任准备金（保险专用）
#　　148 6502 提取保险责任准备金（保险专用）
#　　149 6511 赔付支出（保险专用）
#　　150 6521 保户红利支出（保险专用）
#　　151 6531 退保金（保险专用）
#　　152 6541 分出保费（保险专用）
#　　153 6542 分保费用（保险专用）
#　　154 6601 销售费用
#　　155 6602 管理费用
#　　156 6603 财务费用
#　　157 6604 勘探费用
#　　158 6701 资产减值损失
#　　159 6711 营业外支出
#　　160 6801 所得税费用
#　　161 6901 以前年度损益调整


#会计科目初始化
def account_init
  Account.create(:code => 1001, :name => "库存现金")
  Account.create(:code => 1002, :name => "银行存款")
  Account.create(:code => 1003, :name => "存放中央银行款项")
  Account.create(:code => 1011, :name => "存放同业")
  Account.create(:code => 1015, :name => "其他货币资金")
  Account.create(:code => 1021, :name => "结算备付金")
  Account.create(:code => 1031, :name => "存出保证金")
  Account.create(:code => 1051, :name => "拆出资金")
  Account.create(:code => 1101, :name => "交易性金融资产")
  Account.create(:code => 1111, :name => "买入返售金融资产")
  Account.create(:code => 1121, :name => "应收票据")
  Account.create(:code => 1122, :name => "应收账款")
  Account.create(:code => 1123, :name => "预付账款")
  Account.create(:code => 1211, :name => "应收保户储金")
  Account.create(:code => 1221, :name => "应收代位追偿款")
  Account.create(:code => 1222, :name => "应收分保账款")
  Account.create(:code => 1223, :name => "应收分保未到期责任准备金")
  Account.create(:code => 1224, :name => "应收分保保险责任准备金")
  Account.create(:code => 1231, :name => "其他应收款")
  Account.create(:code => 1241, :name => "坏账准备")
  Account.create(:code => 1251, :name => "贴现资产")
  Account.create(:code => 1301, :name => "贷款")
  Account.create(:code => 1302, :name => "贷款损失准备")
  Account.create(:code => 1311, :name => "代理兑付证券")
  Account.create(:code => 1321, :name => "代理业务资产")
  Account.create(:code => 1401, :name => "材料采购")
  Account.create(:code => 1402, :name => "在途物资")
  Account.create(:code => 1403, :name => "原材料")
  Account.create(:code => 1404, :name => "材料成本差异")
  Account.create(:code => 1406, :name => "库存商品")
  Account.create(:code => 1407, :name => "发出商品")
  Account.create(:code => 1410, :name => "商品进销差价")
  Account.create(:code => 1411, :name => "委托加工物资")
  Account.create(:code => 1412, :name => "包装物及低值易耗品")
  Account.create(:code => 1421, :name => "消耗性生物资产")
  Account.create(:code => 1431, :name => "周转材料")
  Account.create(:code => 1441, :name => "贵金属")
  Account.create(:code => 1442, :name => "抵债资产")
  Account.create(:code => 1451, :name => "损余物资")
  Account.create(:code => 1461, :name => "存货跌价准备")
  Account.create(:code => 1511, :name => "独立账户资产")
  Account.create(:code => 1521, :name => "持有至到期投资")
  Account.create(:code => 1522, :name => "持有至到期投资减值准备")
  Account.create(:code => 1523, :name => "可供出售金融资产")
  Account.create(:code => 1524, :name => "长期股权投资")
  Account.create(:code => 1525, :name => "长期股权投资减值准备")
  Account.create(:code => 1526, :name => "投资性房地产")
  Account.create(:code => 1531, :name => "长期应收款")
  Account.create(:code => 1541, :name => "未实现金融收益")
  Account.create(:code => 1551, :name => "存出资本保证金")
  Account.create(:code => 1601, :name => "固定资产")
  Account.create(:code => 1602, :name => "累计折旧")
  Account.create(:code => 1603, :name => "固定资产减值准备")
  Account.create(:code => 1604, :name => "在建工程")
  Account.create(:code => 1605, :name => "工程物资")
  Account.create(:code => 1606, :name => "固定资产清理")
  Account.create(:code => 1611, :name => "融资租赁资产")
  Account.create(:code => 1612, :name => "未担保余值")
  Account.create(:code => 1621, :name => "生产性生物资产")
  Account.create(:code => 1622, :name => "生产性生物资产累计折旧")
  Account.create(:code => 1623, :name => "公益性生物资产")
  Account.create(:code => 1631, :name => "油气资产")
  Account.create(:code => 1632, :name => "累计折耗")
  Account.create(:code => 1701, :name => "无形资产")
  Account.create(:code => 1702, :name => "累计摊销")
  Account.create(:code => 1703, :name => "无形资产减值准备")
  Account.create(:code => 1711, :name => "商誉")
  Account.create(:code => 1801, :name => "长期待摊费用")
  Account.create(:code => 1811, :name => "递延所得税资产")
  Account.create(:code => 1901, :name => "待处理财产损益")
  Account.create(:code => 2001, :name => "短期借款")
  Account.create(:code => 2002, :name => "存入保证金")
  Account.create(:code => 2003, :name => "拆入资金")
  Account.create(:code => 2004, :name => "向中央银行借款")
  Account.create(:code => 2011, :name => "同业存放")
  Account.create(:code => 2012, :name => "吸收存款")
  Account.create(:code => 2021, :name => "贴现负债")
  Account.create(:code => 2101, :name => "交易性金融负债")
  Account.create(:code => 2111, :name => "卖出回购金融资产款")
  Account.create(:code => 2201, :name => "应付票据")
  Account.create(:code => 2202, :name => "应付账款")
  Account.create(:code => 2205, :name => "预收账款")
  Account.create(:code => 2211, :name => "应付职工薪酬")
  Account.create(:code => 2221, :name => "应交税费")
  Account.create(:code => 2231, :name => "应付股利")
  Account.create(:code => 2232, :name => "应付利息")
  Account.create(:code => 2241, :name => "其他应付款")
  Account.create(:code => 2251, :name => "应付保户红利")
  Account.create(:code => 2261, :name => "应付分保账款")
  Account.create(:code => 2311, :name => "代理买卖证券款")
  Account.create(:code => 2312, :name => "代理承销证券款")
  Account.create(:code => 2313, :name => "代理兑付证券款")
  Account.create(:code => 2314, :name => "代理业务负债")
  Account.create(:code => 2401, :name => "预提费用")
  Account.create(:code => 2411, :name => "预计负债")
  Account.create(:code => 2501, :name => "递延收益")
  Account.create(:code => 2601, :name => "长期借款")
  Account.create(:code => 2602, :name => "长期债券")
  Account.create(:code => 2701, :name => "未到期责任准备金")
  Account.create(:code => 2702, :name => "保险责任准备金")
  Account.create(:code => 2711, :name => "保户储金")
  Account.create(:code => 2721, :name => "独立账户负债")
  Account.create(:code => 2801, :name => "长期应付款")
  Account.create(:code => 2802, :name => "未确认融资费用")
  Account.create(:code => 2811, :name => "专项应付款")
  Account.create(:code => 2901, :name => "递延所得税负债")
  Account.create(:code => 3001, :name => "清算资金往来")
  Account.create(:code => 3002, :name => "外汇买卖")
  Account.create(:code => 3101, :name => "衍生工具")
  Account.create(:code => 3201, :name => "套期工具")
  Account.create(:code => 3202, :name => "被套期项目")
  Account.create(:code => 4001, :name => "实收资本")
  Account.create(:code => 4002, :name => "资本公积")
  Account.create(:code => 4101, :name => "盈余公积")
  Account.create(:code => 4102, :name => "一般风险准备")
  Account.create(:code => 4103, :name => "本年利润")
  Account.create(:code => 4104, :name => "利润分配")
  Account.create(:code => 4201, :name => "库存股")
  Account.create(:code => 5001, :name => "生产成本")
  Account.create(:code => 5101, :name => "制造费用")
  Account.create(:code => 5201, :name => "劳务成本")
  Account.create(:code => 5301, :name => "研发支出")
  Account.create(:code => 5401, :name => "工程施工")
  Account.create(:code => 5402, :name => "工程结算")
  Account.create(:code => 5403, :name => "机械作业")
  Account.create(:code => 6001, :name => "主营业务收入")
  Account.create(:code => 6011, :name => "利息收入")
  Account.create(:code => 6021, :name => "手续费收入")
  Account.create(:code => 6031, :name => "保费收入")
  Account.create(:code => 6032, :name => "分保费收入")
  Account.create(:code => 6041, :name => "租赁收入")
  Account.create(:code => 6051, :name => "其他业务收入")
  Account.create(:code => 6061, :name => "汇兑损益")
  Account.create(:code => 6101, :name => "公允价值变动损益")
  Account.create(:code => 6111, :name => "投资收益")
  Account.create(:code => 6201, :name => "摊回保险责任准备金")
  Account.create(:code => 6202, :name => "摊回赔付支出")
  Account.create(:code => 6203, :name => "摊回分保费用")
  Account.create(:code => 6301, :name => "营业外收入")
  Account.create(:code => 6401, :name => "主营业务成本")
  Account.create(:code => 6402, :name => "其他业务成本")
  Account.create(:code => 6405, :name => "营业税金及附加")
  Account.create(:code => 6411, :name => "利息支出")
  Account.create(:code => 6421, :name => "手续费支出")
  Account.create(:code => 6501, :name => "提取未到期责任准备金")
  Account.create(:code => 6502, :name => "提取保险责任准备金")
  Account.create(:code => 6511, :name => "赔付支出")
  Account.create(:code => 6521, :name => "保户红利支出")
  Account.create(:code => 6531, :name => "退保金")
  Account.create(:code => 6541, :name => "分出保费")
  Account.create(:code => 6542, :name => "分保费用")
  Account.create(:code => 6601, :name => "销售费用")
  Account.create(:code => 6602, :name => "管理费用")
  Account.create(:code => 6603, :name => "财务费用")
  Account.create(:code => 6604, :name => "勘探费用")
  Account.create(:code => 6701, :name => "资产减值损失")
  Account.create(:code => 6711, :name => "营业外支出")
  Account.create(:code => 6801, :name => "所得税费用")
  Account.create(:code => 6901, :name => "以前年度损益调整")
end

account_init()


#人员初始化
def people_init
  Person.create :name => "袁柏英"
end

people_init()

