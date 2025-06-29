-- EDA
-- Exploratory Data Analysis


SELECT * 
FROM world_layoffs.layoffs_staging2;

SELECT MAX(total_laid_off)
FROM world_layoffs.layoffs_staging2;


-- Percentage of layoffs
SELECT MAX(percentage_laid_off),  MIN(percentage_laid_off)
FROM world_layoffs.layoffs_staging2
WHERE  percentage_laid_off IS NOT NULL;


-- Companies with 1(100 percent) of the company laid off
SELECT *
FROM world_layoffs.layoffs_staging2
WHERE  percentage_laid_off = 1;

SELECT *
FROM world_layoffs.layoffs_staging2
WHERE  percentage_laid_off = 1
ORDER BY funds_raised_millions DESC;


