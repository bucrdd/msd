package beans;

import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.apache.struts2.ServletActionContext;

import beans.Genome;
import beans.GenomeDao;
import beans.GenomeSvg;
import beans.InitGlobal;
import beans.ProjectProperties;
import beans.DataInformation;
import beans.SuperEnhancers;
import beans.TFBS;
import beans.DataInformationDao;
import beans.SuperEnhancersDao;
import beans.TFBSDao;
import beans.RefGene;
import beans.CustomTrack;
import beans.Color;
import beans.GenomeImageGlobal;
import beans.MathStas;



public class ImageFactoryField {
	
	private List<String> tableNameList;
	private String position;
	//ΪʲôҪ�и�refgene��
	private RefGene refGene;
	//*
	//private Genome genome;
	private List<ImageBeans> list;
	private String species;
	
	public ImageFactoryField(String species,String position){
		//System.out.println("Paramaters input from action" + species + position);
		this.species=species;
		this.position=position;
	}
	//*************
	/*public Genome getGenome() {
		return genome;
	}*/
	
	public List<String> getTableNameList() {
		return tableNameList;
	}

	public void setTableNameList(List<String> tableNameList) {
		this.tableNameList = tableNameList;
	}

	public RefGene getRefGene() {
		return refGene;
	}

	public void setRefGene(RefGene refGene) {
		this.refGene = refGene;
	}
	//************
	/*public void setGenome(Genome genome) {
		this.genome = genome;
	}*/

	public List<ImageBeans> getList() {
		return list;
	}

	public void setList(List<ImageBeans> list) {
		this.list = list;
	}

	public List<ImageBeans> getImages(){
	
		if(tableNameList==null){
			return this.getBedImageBeans();
		}else{
			DataInformationDao dataInfoDao=new DataInformationDao();
			//System.out.println(">>>"+tableNameList);
			DataInformation datainfo=dataInfoDao.getQueryByTableName(tableNameList.get(0));
			
			Pattern pattern = Pattern.compile("^custom");
			Matcher matcher = pattern.matcher(tableNameList.get(0));
			
			if(matcher.find()){
				//System.out.println(tableNameList);
				return this.getCustomTrackImageBeans();
			}else if(datainfo.getTrack().equals("DNA Methylation")){
				return this.getMethImageBeans();
			}else if(datainfo.getTrack().equals("H3K27ac across cell-types/tissues")){
				return this.getSEhistoneImageBeans();
			}else if(datainfo.getTrack().equals("p300 across cell-types/tissues")){
				return this.getSEhistoneImageBeans();
			}else if(datainfo.getTrack().equals("BRD4 across cell-types/tissues")){
				return this.getSEhistoneImageBeans();
			}else if(datainfo.getTrack().equals("Med1 across cell-types/tissues")){
				return this.getSEhistoneImageBeans();
			}else if(datainfo.getTrack().equals("SpCas9 Target Site")){
				return this.getSpCas9ImageBeans();
			}else if(datainfo.getTrack().equals("SNP Site")){
				return this.getSnpImageBeans();
			}else if(datainfo.getTrack().equals("Expression")){
				return this.getExpressionBeans();
			}else if(datainfo.getTrack().equals("TFBS by ChIP-seq")){
				return this.getTFsChIPseq();
			}else if(datainfo.getTrack().equals("Conservation")){
				return this.getNTconservationImageBeans();
			}else if(datainfo.getTrack().equals("4DGenome")){//*******************
				return this.getGenomeImageBeans();
			}else if(datainfo.getTrack().equals("SE Constituent")){//*******************
				return this.getHicImageBeans();
			}else{
				return null;
			}
		}
	}
	
	public List<ImageBeans> getHicImageBeans(){
		list=new ArrayList<ImageBeans>();
		refGene=this.getChromIndex();
		this.setHicImage();
		return list; 
	}
	
	public List<ImageBeans> getGenomeImageBeans(){
		list=new ArrayList<ImageBeans>();
		refGene=this.getChromIndex();
		this.setGenomeImage();
		return list;
	}
	
	public List<ImageBeans> getNTconservationImageBeans(){
		list=new ArrayList<ImageBeans>();
		refGene=this.getChromIndex();
		this.setNTconservationImage();
		return list;
	}
	
	public List<ImageBeans> getCustomTrackImageBeans(){
		list=new ArrayList<ImageBeans>();
		refGene=this.getChromIndex();
		this.setCustomTrackImage();
		return list;
	}
	
	public List<ImageBeans> getSEhistoneImageBeans(){
		list=new ArrayList<ImageBeans>();
		refGene=this.getChromIndex();
		this.setSEhistoneImage();
		return list;
	}
	
	public List<ImageBeans> getTFsChIPseq(){
		list=new ArrayList<ImageBeans>();
		refGene=this.getChromIndex();
		this.setTFsChIPseqImage();
		return list;
	}
	
	public List<ImageBeans> getExpressionBeans(){
		list=new ArrayList<ImageBeans>();
		refGene=this.getChromIndex();
		this.setExpressionImage();
		return list;
	}
	
	public List<ImageBeans> getMethImageBeans(){
		list=new ArrayList<ImageBeans>();
		refGene=this.getChromIndex();
		this.setMethImage();
		return list;
	}
	
	public List<ImageBeans> getSnpImageBeans(){
		list=new ArrayList<ImageBeans>();
		refGene=this.getChromIndex();
		this.setSnpImage();
		return list;
	}
	
	public List<ImageBeans> getSpCas9ImageBeans(){
		list=new ArrayList<ImageBeans>();
		refGene=this.getChromIndex();
		this.setSpCas9Image();
		return list;
	}
	
	public List<ImageBeans> getHistoneImageBeans(){
		list=new ArrayList<ImageBeans>();
		refGene=this.getChromIndex();
		this.setHistoneImage();
		return list;
	}
	
	public List<ImageBeans> getBedImageBeans(){
		// imageList
		list=new ArrayList<ImageBeans>();
		list.add(this.getChromosome());
		// generate svgs one by one
		this.setScaleImage();
		this.setScaleCoordImage();
		
		/*if((refGene.getTxEnd()-refGene.getTxStart())<150){
			this.setSequenceImage();
		}*/
		
		this.setCpGisLandImage();
		this.setRefGeneImage();
		this.setSuperEnhancerImage();
		this.setTranscriptionFactorImage();
		return list;
	}
	
	@SuppressWarnings("deprecation")
	public void setHicImage(){
		DataInformationDao dataInfoDao=new DataInformationDao();

		for(int i=0;i<this.tableNameList.size();i++){
			SuperEnhancersDao sed=new SuperEnhancersDao();
			/*String cellType = dataInfoDao.getQueryByTableName(tableNameList.get(i)).getCellType();
			if(cellType.equals("All")){*/
			List<SuperEnhancers> listse=sed.getListQueryByChromLoci(InitGlobal.SpeciesMap.get(species),refGene.getChrom(), refGene.getTxStart(), refGene.getTxEnd(),dataInfoDao.getQueryByTableName(tableNameList.get(i)).getCellType(),"All...","SE","All...");
			//List<SuperEnhancers> listse=sed.getListQueryByChromLoci(InitGlobal.SpeciesMap.get(species),refGene.getChrom(), refGene.getTxStart(), refGene.getTxEnd(),"","All...","SE");
			
			/*}else{
				List<SuperEnhancers> listse=sed.getListQueryByChromLoci(InitGlobal.SpeciesMap.get(species),refGene.getChrom(), refGene.getTxStart(), refGene.getTxEnd(),dataInfoDao.getQueryByTableName(tableNameList.get(i)).getCellType(),"All...","SE");
			}*/
			HicDao hicDao=new HicDao();
			List<Hic> listHic=hicDao.getListByIndex(tableNameList.get(i), getRefGene().getChrom(), refGene.getTxStart(), refGene.getTxEnd());
			HicSvg HicSvg=new HicSvg();
			HicSvg.setListse(listse);
			HicSvg.setMaxHicValue(hicDao.getMaxHicValue(tableNameList.get(i), getRefGene().getChrom(), refGene.getTxStart(), refGene.getTxEnd()));
			HicSvg.setListhic(listHic);
			HicSvg.setStart(refGene.getTxStart());
			HicSvg.setEnd(refGene.getTxEnd());
			File file=null;
			try {
				file = File.createTempFile("svg", ".svg",new File(ServletActionContext.getRequest().getRealPath(ProjectProperties.getInstance().getConfigItem("svgFilePath","tmp/svg"))));
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			//Ϊʲô��setStyle��setHeoght
			ImageBeans beans=HicSvg.createImage(file);
			beans.setLabel(dataInfoDao.getQueryByTableName(tableNameList.get(i)).getTrackLabel());
			list.add(beans);
		}
	}	
	
	//*************��Ƭ����
	@SuppressWarnings("deprecation")
	public void setGenomeImage(){
		File file=null;
		//DataInformationDao dataInfoDao=new DataInformationDao();
				
		GenomeDao geno=new GenomeDao();
		
		List<Genome> listge=geno.getListQueryByPosition(InitGlobal.SpeciesMap.get(species),refGene.getChrom(), refGene.getTxStart(), refGene.getTxEnd());
		InitGlobal.logger.info("��ѯgenome�ɹ�����¼��СΪ��"+listge.size());
		for(int i=0;i<listge.size();i++){
			try {
				file = File.createTempFile("svg", ".svg",new File(ServletActionContext.getRequest().getRealPath(ProjectProperties.getInstance().getConfigItem("svgFilePath","tmp/svg"))));
				InitGlobal.logger.info("����genome SVG���ļ�"+file.getName());
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			GenomeSvg genomeSvg=new GenomeSvg();
			try {
				genomeSvg.createSvg(listge.get(i),refGene.getTxStart(), refGene.getTxEnd(),file);
				InitGlobal.logger.info("����genome SVG�ļ��ɹ�"+file.getName());
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				InitGlobal.logger.warning(e.getMessage());
			}
			ImageBeans imageBean=new ImageBeans();
			imageBean.setLabel(listge.get(i).getName());
			imageBean.setUrl(file.getName());
			imageBean.setStyle("4DGenome");
			imageBean.setHeight(25);
			list.add(imageBean);
		}
		
	}
	
	@SuppressWarnings("deprecation")
	public void setNTconservationImage(){
		//������ȡlabel��ǩ
		DataInformationDao dataInfoDao=new DataInformationDao();
		//MathylationDao methDao=new MathylationDao();
		//List<SiteMeth> listSm;
		//DataInformation dataInfo;
		//File file=null;
		for(int i=0;i<tableNameList.size();i++){
			File file=null;
			NTconservationDao ntcDao=new NTconservationDao();
			List<NTconservation> listNTconservation=ntcDao.getListByIndex(tableNameList.get(i), refGene.getChrom(), refGene.getTxStart(), refGene.getTxEnd());
			InitGlobal.logger.info("��ѯNTconservation�ɹ�����¼��СΪ��"+listNTconservation.size());
			try {
				file = File.createTempFile("svg", ".svg",new File(ServletActionContext.getRequest().getRealPath(ProjectProperties.getInstance().getConfigItem("svgFilePath","tmp/svg"))));
				InitGlobal.logger.info("����NTconservation SVG���ļ�"+file.getName());
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			NTconservationSvg ntcSvg=new NTconservationSvg();
			ntcSvg.setColor("#CC3366");
			try {
				ntcSvg.createSvg(listNTconservation,refGene.getTxStart(), refGene.getTxEnd(),file);
				InitGlobal.logger.info("����NTconservation SVG�ļ��ɹ�"+file.getName());
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				InitGlobal.logger.info("����NTconservation SVG�ļ�ʧ��");
				InitGlobal.logger.warning(e.getMessage());
			}
			
			ImageBeans imageBean=new ImageBeans();
			imageBean.setLabel(dataInfoDao.getQueryByTableName(tableNameList.get(i)).getTrackLabel());
			imageBean.setUrl(file.getName());
			imageBean.setStyle("NTconservation");
			imageBean.setHeight(45);
			list.add(imageBean);
		}
	}
	
	@SuppressWarnings("deprecation")
	public void setCustomTrackImage(){
		for (int i=0; i<tableNameList.size(); i++){
			//String[] fields=tableNameList.get(i).split("custom");
			//System.out.println(tableNameList.get(i));
			File file=null;
			Path path = Paths.get(ProjectProperties.getInstance().getConfigItem("customTrackFilePath"),tableNameList.get(i));
			CustomTrackDao customTrackdao=new CustomTrackDao();
			List<CustomTrack> listCustomTrack= customTrackdao.getListByIndex(path.toString(),refGene.getChrom(), refGene.getTxStart(), refGene.getTxEnd());

			InitGlobal.logger.info("��ѯCustomTrack�ɹ�����¼��СΪ��"+listCustomTrack.size());
			try {
				file = File.createTempFile("svg", ".svg",new File(ServletActionContext.getRequest().getRealPath(ProjectProperties.getInstance().getConfigItem("svgFilePath","tmp/svg"))));
				InitGlobal.logger.info("����CustomTrack SVG���ļ�"+file.getName());
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			CustomTrackSvg customTrackSvg=new CustomTrackSvg();
			customTrackSvg.setColor(customTrackdao.getColor());
			try {
				customTrackSvg.createSvg(listCustomTrack,refGene.getTxStart(), refGene.getTxEnd(),file,customTrackdao.getType());
				InitGlobal.logger.info("����CustomTrack SVG�ļ��ɹ�"+file.getName());
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				InitGlobal.logger.info("����CustomTrack SVG�ļ�ʧ��");
				InitGlobal.logger.warning(e.getMessage());
			}
			ImageBeans imageBean=new ImageBeans();
			imageBean.setLabel(customTrackdao.getLabel());
			imageBean.setUrl(file.getName());
			imageBean.setStyle("CustomTrack");
			if(customTrackdao.getType().equals("region")){
				imageBean.setHeight(25);
			}else{
				imageBean.setHeight(45);
			}
			list.add(imageBean);
		}
	}
	//Ϊʲô���и�SEhistone 
	@SuppressWarnings("deprecation")
	public void setSEhistoneImage(){
		DataInformationDao dataInfoDao=new DataInformationDao();

		for(int i=0;i<this.tableNameList.size();i++){
			SuperEnhancersDao sed=new SuperEnhancersDao();
			List<SuperEnhancers> listse=sed.getListQueryByChromLoci(InitGlobal.SpeciesMap.get(species),refGene.getChrom(), refGene.getTxStart(), refGene.getTxEnd(),dataInfoDao.getQueryByTableName(tableNameList.get(i)).getCellType(),"All...","SE","All...");
			HistoneDao histoneDao=new HistoneDao();
			List<Histone> listHistone=histoneDao.getListByIndex(tableNameList.get(i), getRefGene().getChrom(), refGene.getTxStart(), refGene.getTxEnd());
			SEhistoneSvg SEhistoneSvg=new SEhistoneSvg();
			SEhistoneSvg.setListse(listse);
			SEhistoneSvg.setMaxHistoneValue(histoneDao.getMaxHistoneValue(tableNameList.get(i), getRefGene().getChrom(), refGene.getTxStart(), refGene.getTxEnd()));
			SEhistoneSvg.setListHistone(listHistone);
			SEhistoneSvg.setStart(refGene.getTxStart());
			SEhistoneSvg.setEnd(refGene.getTxEnd());
			File file=null;
			try {
				file = File.createTempFile("svg", ".svg",new File(ServletActionContext.getRequest().getRealPath(ProjectProperties.getInstance().getConfigItem("svgFilePath","tmp/svg"))));
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			//Ϊʲô��setStyle��setHeoght
			ImageBeans beans=SEhistoneSvg.createImage(file);
			beans.setLabel(dataInfoDao.getQueryByTableName(tableNameList.get(i)).getTrackLabel());
			list.add(beans);
		}
		
	}
	
	@SuppressWarnings("deprecation")
	public void setExpressionImage(){
		DataInformationDao dataInfoDao=new DataInformationDao();

		for(int i=0;i<this.tableNameList.size();i++){
			ExpressionDao ed=new ExpressionDao();
			List<Expression> listExpression=ed.getListByIndex(tableNameList.get(i),refGene.getChrom(), refGene.getTxStart(), refGene.getTxEnd());
			InitGlobal.logger.info("��ѯExpression�ɹ�����¼��СΪ��"+listExpression.size());
			ExpressionSvg expressionSvg=new ExpressionSvg();
			expressionSvg.setMaxExpressionValue(ed.getMaxExpressionValue(tableNameList.get(i), getRefGene().getChrom(), refGene.getTxStart(), refGene.getTxEnd()));
			expressionSvg.setListExpression(listExpression);
			expressionSvg.setStart(refGene.getTxStart());
			expressionSvg.setEnd(refGene.getTxEnd());
			File file=null;
			try {
				file = File.createTempFile("svg", ".svg",new File(ServletActionContext.getRequest().getRealPath(ProjectProperties.getInstance().getConfigItem("svgFilePath","tmp/svg"))));
				InitGlobal.logger.info("����Expression SVG���ļ�"+file.getName());
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			ImageBeans imageBean=expressionSvg.createImage(file);
			InitGlobal.logger.info("����Expression SVG�ļ��ɹ�"+file.getName());
			imageBean.setLabel(dataInfoDao.getQueryByTableName(tableNameList.get(i)).getTrackLabel());
			imageBean.setStyle("Expression");
			imageBean.setHeight(100);
			list.add(imageBean);
		}
		
	}
	
	@SuppressWarnings("deprecation")
	public void setTFsChIPseqImage(){
		DataInformationDao dataInfoDao=new DataInformationDao();

		for(int i=0;i<this.tableNameList.size();i++){
			TFsChIPseqDao TFsDao=new TFsChIPseqDao();
			List<TFsChIPseq> listTFsChIPseq=TFsDao.getListByIndex(tableNameList.get(i),refGene.getChrom(), refGene.getTxStart(), refGene.getTxEnd());
			InitGlobal.logger.info("��ѯTFsChIPseq�ɹ�����¼��СΪ��"+listTFsChIPseq.size());
			TFsChIPseqSvg tfsChIPseqSvg=new TFsChIPseqSvg();
			tfsChIPseqSvg.setMaxTFValue(TFsDao.getMaxExpressionValue(tableNameList.get(i), getRefGene().getChrom(), refGene.getTxStart(), refGene.getTxEnd()));
			tfsChIPseqSvg.setListTFsChIPseq(listTFsChIPseq);
			tfsChIPseqSvg.setStart(refGene.getTxStart());
			tfsChIPseqSvg.setEnd(refGene.getTxEnd());
			File file=null;
			try {
				file = File.createTempFile("svg", ".svg",new File(ServletActionContext.getRequest().getRealPath(ProjectProperties.getInstance().getConfigItem("svgFilePath","tmp/svg"))));
				InitGlobal.logger.info("����TFsChIPseq SVG���ļ�"+file.getName());
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			ImageBeans imageBean=tfsChIPseqSvg.createImage(file);
			InitGlobal.logger.info("����TFsChIPseq SVG�ļ��ɹ�"+file.getName());
			imageBean.setLabel(dataInfoDao.getQueryByTableName(tableNameList.get(i)).getTrackLabel());
			imageBean.setStyle("TFsChIPseq");
			imageBean.setHeight(60);
			list.add(imageBean);
		}
		
	}
	
	@SuppressWarnings("deprecation")
	public void setMethImage(){
		DataInformationDao dataInfoDao=new DataInformationDao();
		//MathylationDao methDao=new MathylationDao();
		//List<SiteMeth> listSm;
		//DataInformation dataInfo;
		//File file=null;
		for(int i=0;i<tableNameList.size();i++){
			File file=null;
			MathylationDao methDao=new MathylationDao();
			List<SiteMeth> listSiteMethy=methDao.getListByIndex(tableNameList.get(i), refGene.getChrom(), refGene.getTxStart(), refGene.getTxEnd());
			InitGlobal.logger.info("��ѯSiteMeth�ɹ�����¼��СΪ��"+listSiteMethy.size());
			try {
				file = File.createTempFile("svg", ".svg",new File(ServletActionContext.getRequest().getRealPath(ProjectProperties.getInstance().getConfigItem("svgFilePath","tmp/svg"))));
				InitGlobal.logger.info("����SiteMeth SVG���ļ�"+file.getName());
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			MethylationSvg methySvg=new MethylationSvg();
			methySvg.setColor("#009900");
			try {
				methySvg.createSvg(listSiteMethy,refGene.getTxStart(), refGene.getTxEnd(),file);
				InitGlobal.logger.info("����SiteMeth SVG�ļ��ɹ�"+file.getName());
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				InitGlobal.logger.info("����SiteMeth SVG�ļ�ʧ��");
				InitGlobal.logger.warning(e.getMessage());
			}
			
			ImageBeans imageBean=new ImageBeans();
			imageBean.setLabel(dataInfoDao.getQueryByTableName(tableNameList.get(i)).getTrackLabel());
			imageBean.setUrl(file.getName());
			imageBean.setStyle("SiteMeth");
			imageBean.setHeight(45);
			list.add(imageBean);
		}
	}
	
	/*@SuppressWarnings("deprecation")
	public void setSequenceImage(){
		
		File file=null;
		try {
			file = File.createTempFile("svg", ".svg",new File(ServletActionContext.getRequest().getRealPath(ProjectProperties.getInstance().getConfigItem("svgFilePath","tmp/svg"))));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		SequenceSvg seqSvg=new SequenceSvg();
		BandSequenceDao2 seqdao=new BandSequenceDao2();
		List<Sequence> listseq=seqdao.getListByPosition(refGene.getChrom(), refGene.getTxStart(), refGene.getTxEnd());
		Sequence seq=new Sequence();
		seq=seq.mergeSeq(listseq,refGene.getTxStart(), refGene.getTxEnd());
		
		try {
			seqSvg.createSvg(refGene.getTxStart(), refGene.getTxEnd(),seq,file);
			InitGlobal.logger.info("����seqSvg SVG�ļ��ɹ�"+file.getName());
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			InitGlobal.logger.warning(e.getMessage());
		}
		ImageBeans imageBean=new ImageBeans();
		imageBean.setLibel("sequence");
		imageBean.setUrl(file.getName());
		imageBean.setStyle("refGene");
		list.add(imageBean);
	}*/
	
	
	public boolean positionIsNotNull(){
		
		refGene=this.getChromIndex();
		if(refGene==null){
			InitGlobal.logger.warning("��ѯ����������");
			return false;
		}
		if(refGene.getTxStart()>=refGene.getTxEnd()){
			InitGlobal.logger.warning("��ѯ����������");
			return false;
		}
		return true;
	}
	
	
	/**
	 * 
	 * @return bean: ImageBeans
	 */
	@SuppressWarnings("deprecation")
	public ImageBeans getChromosome(){
		
		species=InitGlobal.species;
		
		refGene=this.getChromIndex();
		InitGlobal.logger.info("���λ����Ϣ"+refGene.getChrom()+":"+refGene.getTxStart()+"-"+refGene.getTxEnd());
		File file=null;
		try {
			file = File.createTempFile("svg", ".svg",new File(ServletActionContext.getRequest().getRealPath(ProjectProperties.getInstance().getConfigItem("svgFilePath","tmp/svg"))));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		// query database
		BandDao cyto=new BandDao();
		List<CytoBand> listCyto=cyto.getListQueryByName(InitGlobal.SpeciesMap.get(species),refGene.getChrom()); 
		InitGlobal.logger.info("��ѯȾɫ�ʼ�¼��"+listCyto.size());
		
		if (species.equals("Human")){
			CentromereBandSvg centromereBandSvg=new CentromereBandSvg();
			centromereBandSvg.setBandList(listCyto);
			try {
				// generate centromereBandSvg and save it in file
				centromereBandSvg.createChromosomeSvgFile(file,refGene.getTxStart(), refGene.getTxEnd());
				InitGlobal.logger.info("����hgChromosome SVG�ļ��ɹ�"+file.getName());
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				InitGlobal.logger.warning(e.getMessage());
			}
			ImageBeans bean=new ImageBeans();
			bean.setHeight(900);
			bean.setLabel("");
			bean.setUrl(file.getName());
			return bean;
		}else{
			ChromosomeBand chromosome=new ChromosomeBand(listCyto);
			try {
				chromosome.createChromosomeSvgFile(file,refGene.getTxStart(), refGene.getTxEnd());
				InitGlobal.logger.info("����Chromosome SVG�ļ��ɹ�"+file.getName());
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				InitGlobal.logger.warning(e.getMessage());
			}
			ImageBeans imageBean=new ImageBeans();
			if(listCyto.get(0).getName().equals(listCyto.get(listCyto.size()-1))) imageBean.setLabel(refGene.getChrom()+"("+listCyto.get(0).getName()+")");
			else imageBean.setLabel(refGene.getChrom()+"("+listCyto.get(0).getName()+"-"+listCyto.get(listCyto.size()-1).getName()+")");
			imageBean.setUrl(file.getName());
			imageBean.setStyle("chromosome");
			return imageBean;
		}
		
	}
	
	
	@SuppressWarnings("deprecation")
	 public void setScaleImage() {

		
		File file=null;
		try {
			file = File.createTempFile("svg", ".svg",new File(ServletActionContext.getRequest().getRealPath(ProjectProperties.getInstance().getConfigItem("svgFilePath","tmp/svg"))));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		ScaleSvg scaleSvg=new ScaleSvg();
		try {
			scaleSvg.createSvg(refGene.getTxStart(), refGene.getTxEnd(),file);
			InitGlobal.logger.info("����ScaleSvg SVG�ļ��ɹ�"+file.getName());
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			InitGlobal.logger.warning(e.getMessage());
		}
		ImageBeans imageBean=new ImageBeans();
		imageBean.setLabel("scale");
		imageBean.setUrl(file.getName());
		imageBean.setStyle("refGene");
		 list.add(imageBean);
	}
	
	
	// addScaleCoordImageToImageList()
	@SuppressWarnings("deprecation")
	public void setScaleCoordImage(){
		
		File file=null;
		try {
			file = File.createTempFile("svg", ".svg",new File(ServletActionContext.getRequest().getRealPath(ProjectProperties.getInstance().getConfigItem("svgFilePath","tmp/svg"))));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		ScaleCoordSvg scaleSvg=new ScaleCoordSvg();
		try {
			scaleSvg.createSvg(refGene.getTxStart(), refGene.getTxEnd(),file);
			InitGlobal.logger.info("����ScaleSvg SVG�ļ��ɹ�"+file.getName());
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			InitGlobal.logger.warning(e.getMessage());
		}
		ImageBeans imageBean=new ImageBeans();
		imageBean.setLabel(refGene.getChrom());
		imageBean.setUrl(file.getName());
		imageBean.setStyle("refGene");
		list.add(imageBean);
	}
	
	@SuppressWarnings("deprecation")
	public void setRefGeneImage(){
		File file=null;
		
		RefGeneDao refg=new RefGeneDao();
		
		List<RefGene> listref=refg.getListQueryByPosition(InitGlobal.SpeciesMap.get(species),refGene.getChrom(), refGene.getTxStart(), refGene.getTxEnd());
		InitGlobal.logger.info("��ѯrefGene�ɹ�����¼��СΪ��"+listref.size());
		//System.out.println(0);
		for(int i=0;i<listref.size();i++){
			try {
				file = File.createTempFile("svg", ".svg",new File(ServletActionContext.getRequest().getRealPath(ProjectProperties.getInstance().getConfigItem("svgFilePath","tmp/svg"))));
				InitGlobal.logger.info("����refGene SVG���ļ�"+file.getName());
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			RefGeneSvg refGeneSvg=new RefGeneSvg();
			try {
				System.out.println(listref.get(i) + "," + refGene.getTxStart() + "," + refGene.getTxEnd());
				refGeneSvg.createSvg(listref.get(i),refGene.getTxStart(), refGene.getTxEnd(),file);
				InitGlobal.logger.info("����refGene SVG�ļ��ɹ�"+file.getName());
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				InitGlobal.logger.warning(e.getMessage());
			}
			System.out.println(9);
			ImageBeans imageBean=new ImageBeans();
			imageBean.setLabel(listref.get(i).getName2());
			imageBean.setUrl(file.getName());
			imageBean.setStyle("refGene");
			list.add(imageBean);
		}
	}
	
	
	@SuppressWarnings("deprecation")
	public void setCpGisLandImage(){
		File file=null;
		CpGIslandDao cpg=new CpGIslandDao();
		List<CpGisLand> listcpg=cpg.getQueryByPosition(InitGlobal.SpeciesMap.get(species),refGene.getChrom(), refGene.getTxStart(), refGene.getTxEnd());
		InitGlobal.logger.info("��ѯCpGisLand�ɹ�����¼��СΪ��"+listcpg.size());
		try {
			file = File.createTempFile("svg", ".svg",new File(ServletActionContext.getRequest().getRealPath(ProjectProperties.getInstance().getConfigItem("svgFilePath","tmp/svg"))));
			InitGlobal.logger.info("����CpGisLand SVG���ļ�"+file.getName());
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		CpGislandSvg cpgSvg=new CpGislandSvg();
		try {
			cpgSvg.createSvg(listcpg,refGene.getTxStart(), refGene.getTxEnd(),file);
			InitGlobal.logger.info("����CpGisLand SVG�ļ��ɹ�"+file.getName());
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			InitGlobal.logger.info("����CpGisLand SVG�ļ�ʧ��");
			InitGlobal.logger.warning(e.getMessage());
		}
		ImageBeans imageBean=new ImageBeans();
		imageBean.setLabel("CpGisland");
//		imageBean.setUrl(file.getName());
		imageBean.setUrl(file.getName());
//		System.out.println(str.substring(str.indexOf("<svg")));
		imageBean.setStyle("refGene");
		list.add(imageBean);
	}
	
	
	@SuppressWarnings("deprecation")
	public void setSpCas9Image(){
		File file=null;
		SpCas9Dao cas9dao=new SpCas9Dao();
		List<SpCas9> listcas9=cas9dao.getListByIndex(InitGlobal.SpeciesMap.get(species)+"_spcas9",refGene.getChrom(), refGene.getTxStart(), refGene.getTxEnd());
		InitGlobal.logger.info("��ѯSpCas9�ɹ�����¼��СΪ��"+listcas9.size());
		try {
			file = File.createTempFile("svg", ".svg",new File(ServletActionContext.getRequest().getRealPath(ProjectProperties.getInstance().getConfigItem("svgFilePath","tmp/svg"))));
			InitGlobal.logger.info("����SpCas9 SVG���ļ�"+file.getName());
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		SpCas9Svg cas9Svg=new SpCas9Svg();
		try {
			cas9Svg.createSvg(listcas9,refGene.getTxStart(), refGene.getTxEnd(),file);
			InitGlobal.logger.info("����SpCas9 SVG�ļ��ɹ�"+file.getName());
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			InitGlobal.logger.info("����SpCas9 SVG�ļ�ʧ��");
			InitGlobal.logger.warning(e.getMessage());
		}
		ImageBeans imageBean=new ImageBeans();
		imageBean.setLabel("SpCas9");
//		imageBean.setUrl(file.getName());
		imageBean.setUrl(file.getName());
//		System.out.println(str.substring(str.indexOf("<svg")));
		imageBean.setStyle("SpCas9");
		imageBean.setHeight(25);
		list.add(imageBean);
	}
	
	
	@SuppressWarnings("deprecation")
	public void setSnpImage(){
		for (int i=0; i<tableNameList.size(); i++){
			File file=null;
			SnpDao snpdao=new SnpDao();
			List<SNP> listSnp=snpdao.getListByIndex(tableNameList.get(i),refGene.getChrom(), refGene.getTxStart(), refGene.getTxEnd());
			InitGlobal.logger.info("��ѯSNP�ɹ�����¼��СΪ��"+listSnp.size());
			try {
				file = File.createTempFile("svg", ".svg",new File(ServletActionContext.getRequest().getRealPath(ProjectProperties.getInstance().getConfigItem("svgFilePath","tmp/svg"))));
				InitGlobal.logger.info("����SNP SVG���ļ�"+file.getName());
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			SnpSvg snpSvg=new SnpSvg();
			try {
				snpSvg.createSvg(listSnp,refGene.getTxStart(), refGene.getTxEnd(),file);
				InitGlobal.logger.info("����SNP SVG�ļ��ɹ�"+file.getName());
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				InitGlobal.logger.info("����SNP SVG�ļ�ʧ��");
				InitGlobal.logger.warning(e.getMessage());
			}
			ImageBeans imageBean=new ImageBeans();
			DataInformationDao diDao=new DataInformationDao();
			imageBean.setLabel(diDao.getQueryByTableName(tableNameList.get(i)).getTrackLabel());
	//		imageBean.setUrl(file.getName());
			imageBean.setUrl(file.getName());
	//		System.out.println(str.substring(str.indexOf("<svg")));
			imageBean.setStyle("SNP");
			imageBean.setHeight(25);
			list.add(imageBean);
		}
	}
	
	
	@SuppressWarnings("deprecation")
	public void setSuperEnhancerImage(){
		File file=null;
		SuperEnhancersDao sed=new SuperEnhancersDao();
		//System.out.println("SEImage success0");
		List<SuperEnhancers> listse=sed.getListQueryByChromLoci(InitGlobal.SpeciesMap.get(species),refGene.getChrom(), refGene.getTxStart(), refGene.getTxEnd(),"","All...","SE","All...");
		//System.out.println("SEImage success1");
		InitGlobal.logger.info("��ѯSuper-Enhancer�ɹ�����¼��СΪ��"+listse.size());
		//System.out.println("SEImage success2");
		try {
			file = File.createTempFile("svg", ".svg",new File(ServletActionContext.getRequest().getRealPath(ProjectProperties.getInstance().getConfigItem("svgFilePath","tmp/svg"))));
			InitGlobal.logger.info("����Super-Enhancer SVG���ļ�"+file.getName());
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//System.out.println("SEImage success3");
		SuperEnhancerSvg seSvg=new SuperEnhancerSvg();
		try {
			seSvg.createSvg(listse,refGene.getTxStart(), refGene.getTxEnd(),file);
			InitGlobal.logger.info("����Super-Enhancer SVG�ļ��ɹ�"+file.getName());
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			InitGlobal.logger.info("����Super-Enhancer SVG�ļ�ʧ��");
			InitGlobal.logger.warning(e.getMessage());
		}
		//System.out.println("SEImage success4");
		ImageBeans imageBean=new ImageBeans();
		imageBean.setLabel("Super-Enhancer");
		imageBean.setUrl(file.getName());
		imageBean.setStyle("refGene");
		list.add(imageBean);
		//System.out.println("SEImage success");
	}
	
	
	@SuppressWarnings("deprecation")
	public void setTranscriptionFactorImage(){
		File file=null;
		TFBSDao tfd=new TFBSDao();
		List<TFBS> listTF=tfd.getListQueryByLoci(InitGlobal.SpeciesMap.get(species),refGene.getChrom(), refGene.getTxStart(), refGene.getTxEnd());
		InitGlobal.logger.info("��ѯTFBS�ɹ�����¼��СΪ��"+listTF.size());
		try {
			file = File.createTempFile("svg", ".svg",new File(ServletActionContext.getRequest().getRealPath(ProjectProperties.getInstance().getConfigItem("svgFilePath","tmp/svg"))));
			InitGlobal.logger.info("����TFBS SVG���ļ�"+file.getName());
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		TranscriptionFactorSvg tfSvg=new TranscriptionFactorSvg();
		try {
			tfSvg.createSvg(listTF,refGene.getTxStart(), refGene.getTxEnd(),file);
			InitGlobal.logger.info("����TFBS SVG�ļ��ɹ�"+file.getName());
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			InitGlobal.logger.info("����TFBS SVG�ļ�ʧ��");
			InitGlobal.logger.warning(e.getMessage());
		}
		ImageBeans imageBean=new ImageBeans();
		imageBean.setLabel("TFBS");
		imageBean.setUrl(file.getName());
		imageBean.setStyle("refGene");
		list.add(imageBean);
	}
	
	@SuppressWarnings({ "deprecation", "unused" })
	public void setHistoneImage(){
		DataInformationDao dataInfo=new DataInformationDao();
		File file=null;
		for(int i=0;i<tableNameList.size();i++){
			DataInformation listDataInfo=dataInfo.getQueryByTableName(tableNameList.get(i));
			
			//InitGlobal.logger.info("��ѯdata_information�ɹ�����¼��СΪ��"+listDataInfo.size());
			HistoneDao histoneDao=new HistoneDao();
			List<Histone> listHistone=histoneDao.getListByIndex(tableNameList.get(i), getRefGene().getChrom(), refGene.getTxStart(), refGene.getTxEnd());
			//System.out.println("------");	
			double width=GenomeImageGlobal.width;
			double height=50;
			double[] data=new double[listHistone.size()];
			if(listHistone.size()>2*width){
				Histone[] histones=new Histone[(int)(2*width+1)];
				for (int j=0;j<listHistone.size();j++){
					histones[(int)((listHistone.get(j).getStart()-refGene.getTxStart())*2*width/(refGene.getTxEnd()-refGene.getTxStart()))]=listHistone.get(j);
					data[j]=listHistone.get(j).getHistoneValue();
				}
				//System.out.println("00000");
				listHistone=new ArrayList<Histone>();
				for(Histone histone:histones){
					if(histone!=null) listHistone.add(histone);
				}
			}else{
				for (int j=0;j<listHistone.size();j++){
					data[j]=listHistone.get(j).getHistoneValue();
				}
			}
			double max=MathStas.getMax(data);
			//System.out.println("9999999");
			HistSvg histoneSvg=new HistSvg();
//			histoneSvg.setRegion(region);
			//histoneSvg.setYmax(max);
			histoneSvg.setHeight(height);
			histoneSvg.setWidth(width);
//			histoneSvg.setData(data);
			histoneSvg.setHistColor(ProjectProperties.getInstance().getConfigItem(listDataInfo.getTrackLabel(),Color.grey));
			histoneSvg.setList(listHistone);
			try {
				file=File.createTempFile("svg", ".svg",new File(ServletActionContext.getRequest().getRealPath(ProjectProperties.getInstance().getConfigItem("svgFilePath","tmp/svg"))));
				histoneSvg.create(file,refGene.getTxStart(), refGene.getTxEnd());
				ImageBeans imageBean=new ImageBeans();
				imageBean.setLabel(listDataInfo.getTrackLabel());
				imageBean.setDataInfo(listDataInfo);
				imageBean.setUrl(file.getName());
				imageBean.setStyle("histone");
				list.add(imageBean);
				InitGlobal.logger.info("����Histone Svg�ļ��ɹ�"+file.getName());
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				InitGlobal.logger.warning(e.getMessage());
			}
		}
	}
	
	public RefGene getChromIndex(){
		RefGene refGene=null;
		List<RefGene> list;
		try{
			if(position.indexOf("_")!=-1){
				RefGeneDao refGeneDao=new RefGeneDao();
				list=refGeneDao.getListQueryByName(InitGlobal.SpeciesMap.get(species),position.trim());
				if(list.size()>0){
					for(int i=0;i<list.size();i++){
						if(list.get(i).getChrom().indexOf("_")==-1){
							refGene=new RefGene();
							refGene.setChrom(list.get(i).getChrom());
							refGene.setTxStart(list.get(i).getTxStart());
							refGene.setTxEnd(list.get(i).getTxEnd());
						}
					}
				}
			}else if(position.indexOf(":")!=-1){
				//System.out.println(position);
				String chrom=position.substring(0,position.indexOf(":")).trim();
				int start=Integer.parseInt(position.substring(position.indexOf(":")+1,position.lastIndexOf("-")).trim());
				int end=Integer.parseInt(position.substring(position.lastIndexOf("-")+1).trim());
				BandDao cytoBand=new BandDao();
				int max=cytoBand.getQueryMaxByChrom(InitGlobal.SpeciesMap.get(species),chrom);
				if(start<=0) start=1;
				if(end<=0) end=1;
				if(start>end) start=end;
				if(end>max) end=max;
				if(start>max) start=max;
				refGene=new RefGene();
				refGene.setChrom(chrom);
				refGene.setTxStart(start);
				refGene.setTxEnd(end);
			}else{
				RefGeneDao refGeneDao=new RefGeneDao();
				list=refGeneDao.getListQueryByName2(InitGlobal.SpeciesMap.get(species),position.trim());
				if(list.size()>0){
					for(int i=0;i<list.size();i++){
						if(list.get(i).getChrom().indexOf("_")==-1){
							refGene=new RefGene();
							refGene.setChrom(list.get(i).getChrom());
							refGene.setTxStart(list.get(i).getTxStart());
							refGene.setTxEnd(list.get(i).getTxEnd());
						}
					}
				}
			}
		}catch(Exception e){
			InitGlobal.logger.warning("��ѯ����������");
		}
		return refGene;
	}
	
	public String getPosition() {
		return position;
	}

	public void setPosition(String position) {
		this.position = position;
	}

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}
