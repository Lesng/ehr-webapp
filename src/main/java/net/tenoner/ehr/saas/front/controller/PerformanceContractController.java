package net.tenoner.ehr.saas.front.controller;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import net.tenoner.ehr.performance.domain.PerformanceContract;
import net.tenoner.ehr.saas.service.PerformanceContractService;

import org.macula.core.exception.FormBindException;
import org.macula.core.mvc.annotation.FormBean;
import org.macula.core.mvc.annotation.OpenApi;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class PerformanceContractController extends FrontSaasManagerController {
	@Autowired
	private PerformanceContractService performanceContractService;

	@RequestMapping(value = "/contract/list", method = RequestMethod.GET)
	public String list(HttpServletRequest request) {
		return super.getRelativePath("/contract/list");
	}

	@RequestMapping(value = "/contract/datas", method = RequestMethod.GET)
	@OpenApi
	public Page<PerformanceContract> getContracts(@RequestParam(required = false, value = "q") String keywords,
			Pageable page) {
		String companyCode = "";//TODO load companyCode from login user.
		return performanceContractService.findContracts(keywords, companyCode, page);
	}

	@RequestMapping(value = "/contract/edit/{id}", method = RequestMethod.GET)
	public String edit(@PathVariable("id") Long id, Model model, HttpServletRequest request) {
		model.addAttribute("id", id);
		return super.getRelativePath("/contract/edit");
	}

	@RequestMapping(value = "/contract/create", method = RequestMethod.GET)
	public String create() {
		return super.getRelativePath("/contract/edit");
	}

	@RequestMapping(value = "/contract/get/{id}", method = RequestMethod.GET)
	@OpenApi
	public PerformanceContract getPerformanceContract(@PathVariable("id") PerformanceContract company) {
		if (company == null) {
			company = new PerformanceContract();
		}
		return company;
	}

	@RequestMapping(value = "/contract/save", method = RequestMethod.POST)
	@OpenApi
	public Long save(@FormBean("company") @Valid PerformanceContract company) {
		if (hasErrors()) {
			throw new FormBindException(getMergedBindingResults());
		}
		return performanceContractService.savePerformanceContract(company);
	}

	@RequestMapping(value = "/contract/delete/{id}", method = RequestMethod.POST)
	@OpenApi
	public Long delete(@PathVariable("id") PerformanceContract company) {
		performanceContractService.deletePerformanceContract(company);
		return company.getId();
	}
}
